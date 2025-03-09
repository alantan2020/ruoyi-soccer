<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryRef" :inline="true" v-show="showSearch" label-width="100px">
      <el-form-item label="球员ID" prop="playerId">
        <el-input
          v-model="queryParams.playerId"
          placeholder="请输入关联球员ID"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="记录日期" prop="recordDate">
        <el-date-picker clearable
          v-model="queryParams.recordDate"
          type="date"
          value-format="YYYY-MM-DD"
          placeholder="请选择记录日期">
        </el-date-picker>
      </el-form-item>
      <el-form-item label="体重" prop="weight">
        <el-input
          v-model="queryParams.weight"
          placeholder="请输入体重"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="体脂率" prop="bodyFat">
        <el-input
          v-model="queryParams.bodyFat"
          placeholder="请输入体脂率"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="肌肉量" prop="muscleMass">
        <el-input
          v-model="queryParams.muscleMass"
          placeholder="请输入肌肉量"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="最大摄氧量" prop="vo2max">
        <el-input
          v-model="queryParams.vo2max"
          placeholder="请输入最大摄氧量"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="30米冲刺" prop="sprint30m">
        <el-input
          v-model="queryParams.sprint30m"
          placeholder="请输入30米冲刺"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="垂直跳跃" prop="verticalJump">
        <el-input
          v-model="queryParams.verticalJump"
          placeholder="请输入垂直跳跃"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="卧推重量" prop="benchPress">
        <el-input
          v-model="queryParams.benchPress"
          placeholder="请输入卧推重量"
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
          v-hasPermi="['soccer:physical:add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="Edit"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['soccer:physical:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="Delete"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['soccer:physical:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="Download"
          @click="handleExport"
          v-hasPermi="['soccer:physical:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar v-model:showSearch="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="physicalList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="序号" type="index" width="50" align="center" prop="dataId" />
      <el-table-column label="球员" align="center" prop="playerId" />
      <el-table-column label="记录日期" align="center" prop="recordDate" width="180">
        <template #default="scope">
          <span>{{ parseTime(scope.row.recordDate, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="体重" align="center" prop="weight" />
      <el-table-column label="体脂率" align="center" prop="bodyFat" />
      <el-table-column label="肌肉量" align="center" prop="muscleMass" />
      <el-table-column label="最大摄氧量" align="center" prop="vo2max" />
      <el-table-column label="30米冲刺" align="center" prop="sprint30m" />
      <el-table-column label="垂直跳跃" align="center" prop="verticalJump" />
      <el-table-column label="卧推重量" align="center" prop="benchPress" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template #default="scope">
          <el-button link type="primary" icon="Edit" @click="handleUpdate(scope.row)" v-hasPermi="['soccer:physical:edit']">修改</el-button>
          <el-button link type="primary" icon="Delete" @click="handleDelete(scope.row)" v-hasPermi="['soccer:physical:remove']">删除</el-button>
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

    <!-- 添加或修改身体数据对话框 -->
    <el-dialog :title="title" v-model="open" width="600px" append-to-body>
      <el-form ref="physicalRef" :model="form" :rules="rules" label-width="120px">
        <el-form-item label="关联球员ID" prop="playerId">
          <el-input v-model="form.playerId" placeholder="请输入关联球员ID" />
        </el-form-item>
        <el-form-item label="记录日期" prop="recordDate">
          <el-date-picker clearable
            v-model="form.recordDate"
            type="date"
            value-format="YYYY-MM-DD"
            placeholder="请选择记录日期">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="体重" prop="weight">
          <el-input v-model="form.weight" placeholder="请输入体重" />
        </el-form-item>
        <el-form-item label="体脂率" prop="bodyFat">
          <el-input v-model="form.bodyFat" placeholder="请输入体脂率" />
        </el-form-item>
        <el-form-item label="肌肉量" prop="muscleMass">
          <el-input v-model="form.muscleMass" placeholder="请输入肌肉量" />
        </el-form-item>
        <el-form-item label="最大摄氧量" prop="vo2max">
          <el-input v-model="form.vo2max" placeholder="请输入最大摄氧量" />
        </el-form-item>
        <el-form-item label="30米冲刺" prop="sprint30m">
          <el-input v-model="form.sprint30m" placeholder="请输入30米冲刺" />
        </el-form-item>
        <el-form-item label="垂直跳跃" prop="verticalJump">
          <el-input v-model="form.verticalJump" placeholder="请输入垂直跳跃" />
        </el-form-item>
        <el-form-item label="卧推重量" prop="benchPress">
          <el-input v-model="form.benchPress" placeholder="请输入卧推重量" />
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

<script setup name="Physical">
import { listPhysical, getPhysical, delPhysical, addPhysical, updatePhysical } from "@/api/soccer/physical";

const { proxy } = getCurrentInstance();

const physicalList = ref([]);
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
    recordDate: null,
    weight: null,
    bodyFat: null,
    muscleMass: null,
    vo2max: null,
    sprint30m: null,
    verticalJump: null,
    benchPress: null,
  },
  rules: {
    playerId: [
      { required: true, message: "关联球员ID不能为空", trigger: "blur" }
    ],
    recordDate: [
      { required: true, message: "记录日期不能为空", trigger: "blur" }
    ],
  }
});

const { queryParams, form, rules } = toRefs(data);

/** 查询身体数据列表 */
function getList() {
  loading.value = true;
  listPhysical(queryParams.value).then(response => {
    physicalList.value = response.rows;
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
    dataId: null,
    playerId: null,
    recordDate: null,
    weight: null,
    bodyFat: null,
    muscleMass: null,
    vo2max: null,
    sprint30m: null,
    verticalJump: null,
    benchPress: null,
    delFlag: null,
    createBy: null,
    createTime: null,
    updateBy: null,
    updateTime: null
  };
  proxy.resetForm("physicalRef");
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
  ids.value = selection.map(item => item.dataId);
  single.value = selection.length != 1;
  multiple.value = !selection.length;
}

/** 新增按钮操作 */
function handleAdd() {
  reset();
  open.value = true;
  title.value = "添加身体数据";
}

/** 修改按钮操作 */
function handleUpdate(row) {
  reset();
  const _dataId = row.dataId || ids.value
  getPhysical(_dataId).then(response => {
    form.value = response.data;
    open.value = true;
    title.value = "修改身体数据";
  });
}

/** 提交按钮 */
function submitForm() {
  proxy.$refs["physicalRef"].validate(valid => {
    if (valid) {
      if (form.value.dataId != null) {
        updatePhysical(form.value).then(response => {
          proxy.$modal.msgSuccess("修改成功");
          open.value = false;
          getList();
        });
      } else {
        addPhysical(form.value).then(response => {
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
  const _dataIds = row.dataId || ids.value;
  proxy.$modal.confirm('是否确认删除身体数据编号为"' + _dataIds + '"的数据项？').then(function() {
    return delPhysical(_dataIds);
  }).then(() => {
    getList();
    proxy.$modal.msgSuccess("删除成功");
  }).catch(() => {});
}

/** 导出按钮操作 */
function handleExport() {
  proxy.download('soccer/physical/export', {
    ...queryParams.value
  }, `physical_${new Date().getTime()}.xlsx`)
}

getList();
</script>
