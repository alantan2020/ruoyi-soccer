<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryRef" :inline="true" v-show="showSearch" label-width="100px">
      <el-form-item label="球员ID" prop="playerId">
        <el-input
          v-model="queryParams.playerId"
          placeholder="请输入球员ID"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="受伤日期" prop="injuryDate">
        <el-date-picker clearable
          v-model="queryParams.injuryDate"
          type="date"
          value-format="YYYY-MM-DD"
          placeholder="请选择受伤日期">
        </el-date-picker>
      </el-form-item>
      <el-form-item label="伤病类型" prop="injuryType" style="width: 230px;">
        <el-select v-model="queryParams.injuryType" placeholder="请选择伤病类型" clearable>
          <el-option
            v-for="dict in injury_type"
            :key="dict.value"
            :label="dict.label"
            :value="dict.value"
          />
        </el-select>
      </el-form-item>
      <el-form-item label="恢复状态" prop="recoveryStatus" style="width: 230px;">
        <el-select v-model="queryParams.recoveryStatus" placeholder="请选择恢复状态" clearable>
          <el-option
            v-for="dict in recovery_status"
            :key="dict.value"
            :label="dict.label"
            :value="dict.value"
          />
        </el-select>
      </el-form-item>
      <el-form-item label="预计恢复日期" prop="expectedRecoveryDate">
        <el-date-picker clearable
          v-model="queryParams.expectedRecoveryDate"
          type="date"
          value-format="YYYY-MM-DD"
          placeholder="请选择预计恢复日期">
        </el-date-picker>
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="Search" @click="handleQuery">搜索</el-button>
        <el-button icon="Refresh" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button
          type="primary"
          plain
          icon="Plus"
          @click="handleAdd"
          v-hasPermi="['soccer:injury:add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="Edit"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['soccer:injury:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="Delete"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['soccer:injury:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="Download"
          @click="handleExport"
          v-hasPermi="['soccer:injury:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar v-model:showSearch="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="injuryList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="序号" align="center" prop="injuryId" />
      <el-table-column label="球员ID" align="center" prop="playerId" />
      <el-table-column label="受伤日期" align="center" prop="injuryDate" width="180">
        <template #default="scope">
          <span>{{ parseTime(scope.row.injuryDate, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="伤病类型" align="center" prop="injuryType">
        <template #default="scope">
          <dict-tag :options="injury_type" :value="scope.row.injuryType"/>
        </template>
      </el-table-column>
      <el-table-column label="恢复状态" align="center" prop="recoveryStatus">
        <template #default="scope">
          <dict-tag :options="recovery_status" :value="scope.row.recoveryStatus"/>
        </template>
      </el-table-column>
      <el-table-column label="预计恢复日期" align="center" prop="expectedRecoveryDate" width="180">
        <template #default="scope">
          <span>{{ parseTime(scope.row.expectedRecoveryDate, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="医疗报告内容" align="center" prop="medicalReport" />
      <el-table-column label="康复训练计划" align="center" prop="rehabilitationPlan" />
      <el-table-column label="创建时间" align="center" prop="createTime" width="180">
        <template #default="scope">
          <span>{{ parseTime(scope.row.createTime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="更新人" align="center" prop="updateBy" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template #default="scope">
          <el-button link type="primary" icon="Edit" @click="handleUpdate(scope.row)" v-hasPermi="['soccer:injury:edit']">修改</el-button>
          <el-button link type="primary" icon="Delete" @click="handleDelete(scope.row)" v-hasPermi="['soccer:injury:remove']">删除</el-button>
        </template>
      </el-table-column>
    </el-table>
    
    <pagination
      v-show="total>0"
      :total="total"
      v-model:page="queryParams.pageNum"
      v-model:limit="queryParams.pageSize"
      @pagination="getList"
    />

    <!-- 添加或修改球员伤病追踪对话框 -->
    <el-dialog :title="title" v-model="open" width="800px" append-to-body>
      <el-form ref="injuryRef" :model="form" :rules="rules" label-width="120px">
        <el-form-item label="球员ID" prop="playerId">
          <el-input v-model="form.playerId" placeholder="请输入球员ID" />
        </el-form-item>
        <el-form-item label="受伤日期" prop="injuryDate">
          <el-date-picker clearable
            v-model="form.injuryDate"
            type="date"
            value-format="YYYY-MM-DD"
            placeholder="请选择受伤日期">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="伤病类型" prop="injuryType">
          <el-select v-model="form.injuryType" placeholder="请选择伤病类型">
            <el-option
              v-for="dict in injury_type"
              :key="dict.value"
              :label="dict.label"
              :value="dict.value"
            ></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="恢复状态" prop="recoveryStatus">
          <el-radio-group v-model="form.recoveryStatus">
            <el-radio
              v-for="dict in recovery_status"
              :key="dict.value"
              :label="dict.value"
            >{{dict.label}}</el-radio>
          </el-radio-group>
        </el-form-item>
        <el-form-item label="预计恢复日期" prop="expectedRecoveryDate">
          <el-date-picker clearable
            v-model="form.expectedRecoveryDate"
            type="date"
            value-format="YYYY-MM-DD"
            placeholder="请选择预计恢复日期">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="医疗报告内容">
          <editor v-model="form.medicalReport" :min-height="192"/>
        </el-form-item>
        <el-form-item label="康复训练计划">
          <editor v-model="form.rehabilitationPlan" :min-height="192"/>
        </el-form-item>
        <!-- <el-form-item label="删除标志" prop="delFlag">
          <el-input v-model="form.delFlag" placeholder="请输入删除标志" />
        </el-form-item> -->
      </el-form>
      <template #footer>
        <div class="dialog-footer">
          <el-button type="primary" @click="submitForm">确 定</el-button>
          <el-button @click="cancel">取 消</el-button>
        </div>
      </template>
    </el-dialog>
  </div>
</template>

<script setup name="Injury">
import { listInjury, getInjury, delInjury, addInjury, updateInjury } from "@/api/soccer/injury";

const { proxy } = getCurrentInstance();
const { recovery_status, injury_type } = proxy.useDict('recovery_status', 'injury_type');

const injuryList = ref([]);
const open = ref(false);
const loading = ref(true);
const showSearch = ref(true);
const ids = ref([]);
const single = ref(true);
const multiple = ref(true);
const total = ref(0);
const title = ref("");

const data = reactive({
  form: {},
  queryParams: {
    pageNum: 1,
    pageSize: 10,
    playerId: null,
    injuryDate: null,
    injuryType: null,
    recoveryStatus: null,
    expectedRecoveryDate: null,
    medicalReport: null,
    rehabilitationPlan: null,
  },
  rules: {
    playerId: [
      { required: true, message: "球员ID不能为空", trigger: "blur" }
    ],
    injuryDate: [
      { required: true, message: "受伤日期不能为空", trigger: "blur" }
    ],
    injuryType: [
      { required: true, message: "伤病类型不能为空", trigger: "change" }
    ],
  }
});

const { queryParams, form, rules } = toRefs(data);

/** 查询球员伤病追踪列表 */
function getList() {
  loading.value = true;
  listInjury(queryParams.value).then(response => {
    injuryList.value = response.rows;
    total.value = response.total;
    loading.value = false;
  });
}

// 取消按钮
function cancel() {
  open.value = false;
  reset();
}

// 表单重置
function reset() {
  form.value = {
    injuryId: null,
    playerId: null,
    injuryDate: null,
    injuryType: null,
    recoveryStatus: null,
    expectedRecoveryDate: null,
    medicalReport: null,
    rehabilitationPlan: null,
    delFlag: null,
    createBy: null,
    createTime: null,
    updateBy: null,
    updateTime: null
  };
  proxy.resetForm("injuryRef");
}

/** 搜索按钮操作 */
function handleQuery() {
  queryParams.value.pageNum = 1;
  getList();
}

/** 重置按钮操作 */
function resetQuery() {
  proxy.resetForm("queryRef");
  handleQuery();
}

// 多选框选中数据
function handleSelectionChange(selection) {
  ids.value = selection.map(item => item.injuryId);
  single.value = selection.length != 1;
  multiple.value = !selection.length;
}

/** 新增按钮操作 */
function handleAdd() {
  reset();
  open.value = true;
  title.value = "添加球员伤病追踪";
}

/** 修改按钮操作 */
function handleUpdate(row) {
  reset();
  const _injuryId = row.injuryId || ids.value
  getInjury(_injuryId).then(response => {
    form.value = response.data;
    open.value = true;
    title.value = "修改球员伤病追踪";
  });
}

/** 提交按钮 */
function submitForm() {
  proxy.$refs["injuryRef"].validate(valid => {
    if (valid) {
      if (form.value.injuryId != null) {
        updateInjury(form.value).then(response => {
          proxy.$modal.msgSuccess("修改成功");
          open.value = false;
          getList();
        });
      } else {
        addInjury(form.value).then(response => {
          proxy.$modal.msgSuccess("新增成功");
          open.value = false;
          getList();
        });
      }
    }
  });
}

/** 删除按钮操作 */
function handleDelete(row) {
  const _injuryIds = row.injuryId || ids.value;
  proxy.$modal.confirm('是否确认删除球员伤病追踪编号为"' + _injuryIds + '"的数据项？').then(function() {
    return delInjury(_injuryIds);
  }).then(() => {
    getList();
    proxy.$modal.msgSuccess("删除成功");
  }).catch(() => {});
}

/** 导出按钮操作 */
function handleExport() {
  proxy.download('soccer/injury/export', {
    ...queryParams.value
  }, `injury_${new Date().getTime()}.xlsx`)
}

getList();
</script>
