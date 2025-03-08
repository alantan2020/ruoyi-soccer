<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryRef" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="训练主题" prop="planName">
        <el-input
          v-model="queryParams.planName"
          placeholder="请输入训练主题"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="训练日期" prop="planDate">
        <el-date-picker clearable
          v-model="queryParams.planDate"
          type="date"
          value-format="YYYY-MM-DD"
          placeholder="请选择训练日期">
        </el-date-picker>
      </el-form-item>
      <el-form-item label="开始时间" prop="startTime">
        <el-date-picker clearable
          v-model="queryParams.startTime"
          type="date"
          value-format="YYYY-MM-DD"
          placeholder="请选择开始时间">
        </el-date-picker>
      </el-form-item>
      <el-form-item label="结束时间" prop="endTime">
        <el-date-picker clearable
          v-model="queryParams.endTime"
          type="date"
          value-format="YYYY-MM-DD"
          placeholder="请选择结束时间">
        </el-date-picker>
      </el-form-item>
      <el-form-item label="训练类型" prop="trainingType">
        <el-select v-model="queryParams.trainingType" placeholder="请选择训练类型" clearable>
          <el-option
            v-for="dict in training_type"
            :key="dict.value"
            :label="dict.label"
            :value="dict.value"
          />
        </el-select>
      </el-form-item>
      <el-form-item label="训练场地" prop="location">
        <el-input
          v-model="queryParams.location"
          placeholder="请输入训练场地"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="天气状况" prop="weather">
        <el-input
          v-model="queryParams.weather"
          placeholder="请输入天气状况"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="删除标志" prop="delFlag">
        <el-input
          v-model="queryParams.delFlag"
          placeholder="请输入删除标志"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="更新人" prop="updateBy">
        <el-input
          v-model="queryParams.updateBy"
          placeholder="请输入更新人"
          clearable
          @keyup.enter="handleQuery"
        />
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
          v-hasPermi="['soccer:plan:add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="Edit"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['soccer:plan:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="Delete"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['soccer:plan:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="Download"
          @click="handleExport"
          v-hasPermi="['soccer:plan:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar v-model:showSearch="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="planList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="训练计划ID" align="center" prop="planId" />
      <el-table-column label="训练主题" align="center" prop="planName" />
      <el-table-column label="训练日期" align="center" prop="planDate" width="180">
        <template #default="scope">
          <span>{{ parseTime(scope.row.planDate, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="开始时间" align="center" prop="startTime" width="180">
        <template #default="scope">
          <span>{{ parseTime(scope.row.startTime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="结束时间" align="center" prop="endTime" width="180">
        <template #default="scope">
          <span>{{ parseTime(scope.row.endTime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="训练类型" align="center" prop="trainingType">
        <template #default="scope">
          <dict-tag :options="training_type" :value="scope.row.trainingType"/>
        </template>
      </el-table-column>
      <el-table-column label="训练内容" align="center" prop="trainingContent" />
      <el-table-column label="训练目标" align="center" prop="trainingObjectives" />
      <el-table-column label="训练场地" align="center" prop="location" />
      <el-table-column label="所需器材" align="center" prop="equipmentNeeds" />
      <el-table-column label="天气状况" align="center" prop="weather" />
      <el-table-column label="删除标志" align="center" prop="delFlag" />
      <el-table-column label="更新人" align="center" prop="updateBy" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template #default="scope">
          <el-button link type="primary" icon="Edit" @click="handleUpdate(scope.row)" v-hasPermi="['soccer:plan:edit']">修改</el-button>
          <el-button link type="primary" icon="Delete" @click="handleDelete(scope.row)" v-hasPermi="['soccer:plan:remove']">删除</el-button>
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

    <!-- 添加或修改训练计划对话框 -->
    <el-dialog :title="title" v-model="open" width="500px" append-to-body>
      <el-form ref="planRef" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="训练主题" prop="planName">
          <el-input v-model="form.planName" placeholder="请输入训练主题" />
        </el-form-item>
        <el-form-item label="训练日期" prop="planDate">
          <el-date-picker clearable
            v-model="form.planDate"
            type="date"
            value-format="YYYY-MM-DD"
            placeholder="请选择训练日期">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="开始时间" prop="startTime">
          <el-date-picker clearable
            v-model="form.startTime"
            type="date"
            value-format="YYYY-MM-DD"
            placeholder="请选择开始时间">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="结束时间" prop="endTime">
          <el-date-picker clearable
            v-model="form.endTime"
            type="date"
            value-format="YYYY-MM-DD"
            placeholder="请选择结束时间">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="训练类型" prop="trainingType">
          <el-select v-model="form.trainingType" placeholder="请选择训练类型">
            <el-option
              v-for="dict in training_type"
              :key="dict.value"
              :label="dict.label"
              :value="dict.value"
            ></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="训练内容">
          <editor v-model="form.trainingContent" :min-height="192"/>
        </el-form-item>
        <el-form-item label="训练目标" prop="trainingObjectives">
          <el-input v-model="form.trainingObjectives" type="textarea" placeholder="请输入内容" />
        </el-form-item>
        <el-form-item label="训练场地" prop="location">
          <el-input v-model="form.location" placeholder="请输入训练场地" />
        </el-form-item>
        <el-form-item label="所需器材" prop="equipmentNeeds">
          <el-input v-model="form.equipmentNeeds" type="textarea" placeholder="请输入内容" />
        </el-form-item>
        <el-form-item label="天气状况" prop="weather">
          <el-input v-model="form.weather" placeholder="请输入天气状况" />
        </el-form-item>
        <el-form-item label="删除标志" prop="delFlag">
          <el-input v-model="form.delFlag" placeholder="请输入删除标志" />
        </el-form-item>
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

<script setup name="Plan">
import { listPlan, getPlan, delPlan, addPlan, updatePlan } from "@/api/soccer/plan";

const { proxy } = getCurrentInstance();
const { training_type } = proxy.useDict('training_type');

const planList = ref([]);
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
    planName: null,
    planDate: null,
    startTime: null,
    endTime: null,
    trainingType: null,
    trainingContent: null,
    trainingObjectives: null,
    location: null,
    equipmentNeeds: null,
    weather: null,
    delFlag: null,
    updateBy: null,
  },
  rules: {
    planName: [
      { required: true, message: "训练主题不能为空", trigger: "blur" }
    ],
    planDate: [
      { required: true, message: "训练日期不能为空", trigger: "blur" }
    ],
    startTime: [
      { required: true, message: "开始时间不能为空", trigger: "blur" }
    ],
    endTime: [
      { required: true, message: "结束时间不能为空", trigger: "blur" }
    ],
    trainingType: [
      { required: true, message: "训练类型不能为空", trigger: "change" }
    ],
    trainingContent: [
      { required: true, message: "训练内容不能为空", trigger: "blur" }
    ],
    trainingObjectives: [
      { required: true, message: "训练目标不能为空", trigger: "blur" }
    ],
    location: [
      { required: true, message: "训练场地不能为空", trigger: "blur" }
    ],
  }
});

const { queryParams, form, rules } = toRefs(data);

/** 查询训练计划列表 */
function getList() {
  loading.value = true;
  listPlan(queryParams.value).then(response => {
    planList.value = response.rows;
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
    planId: null,
    planName: null,
    planDate: null,
    startTime: null,
    endTime: null,
    trainingType: null,
    trainingContent: null,
    trainingObjectives: null,
    location: null,
    equipmentNeeds: null,
    weather: null,
    delFlag: null,
    createBy: null,
    createTime: null,
    updateBy: null,
    updateTime: null
  };
  proxy.resetForm("planRef");
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
  ids.value = selection.map(item => item.planId);
  single.value = selection.length != 1;
  multiple.value = !selection.length;
}

/** 新增按钮操作 */
function handleAdd() {
  reset();
  open.value = true;
  title.value = "添加训练计划";
}

/** 修改按钮操作 */
function handleUpdate(row) {
  reset();
  const _planId = row.planId || ids.value
  getPlan(_planId).then(response => {
    form.value = response.data;
    open.value = true;
    title.value = "修改训练计划";
  });
}

/** 提交按钮 */
function submitForm() {
  proxy.$refs["planRef"].validate(valid => {
    if (valid) {
      if (form.value.planId != null) {
        updatePlan(form.value).then(response => {
          proxy.$modal.msgSuccess("修改成功");
          open.value = false;
          getList();
        });
      } else {
        addPlan(form.value).then(response => {
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
  const _planIds = row.planId || ids.value;
  proxy.$modal.confirm('是否确认删除训练计划编号为"' + _planIds + '"的数据项？').then(function() {
    return delPlan(_planIds);
  }).then(() => {
    getList();
    proxy.$modal.msgSuccess("删除成功");
  }).catch(() => {});
}

/** 导出按钮操作 */
function handleExport() {
  proxy.download('soccer/plan/export', {
    ...queryParams.value
  }, `plan_${new Date().getTime()}.xlsx`)
}

getList();
</script>
