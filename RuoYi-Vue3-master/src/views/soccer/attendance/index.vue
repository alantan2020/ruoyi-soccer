<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryRef" :inline="true" v-show="showSearch" label-width="100px">
      <el-form-item label="训练计划ID" prop="planId">
        <el-input
          v-model="queryParams.planId"
          placeholder="请输入训练计划ID"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="球员ID" prop="playerId">
        <el-input
          v-model="queryParams.playerId"
          placeholder="请输入球员ID"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="实际到场时间" prop="arrivalTime">
        <el-date-picker clearable
          v-model="queryParams.arrivalTime"
          type="date"
          value-format="YYYY-MM-DD"
          placeholder="请选择实际到场时间">
        </el-date-picker>
      </el-form-item>
      <el-form-item label="表现评分" prop="performanceRating">
        <el-input
          v-model="queryParams.performanceRating"
          placeholder="请输入表现评分"
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
          v-hasPermi="['soccer:attendance:add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="Edit"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['soccer:attendance:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="Delete"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['soccer:attendance:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="Download"
          @click="handleExport"
          v-hasPermi="['soccer:attendance:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar v-model:showSearch="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="attendanceList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="序号" type="index" width="50" align="center" prop="attendanceId" />
      <el-table-column label="训练计划ID" align="center" prop="planId" />
      <el-table-column label="球员ID" align="center" prop="playerId" />
      <el-table-column label="出勤状态" align="center" prop="attendanceStatus" />
      <el-table-column label="实际到场时间" align="center" prop="arrivalTime" width="180">
        <template #default="scope">
          <span>{{ parseTime(scope.row.arrivalTime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="表现评分" align="center" prop="performanceRating" />
      <el-table-column label="技术观察记录" align="center" prop="technicalNotes" />
      <el-table-column label="身体状态备注" align="center" prop="physicalCondition" />
      <el-table-column label="创建人" align="center" prop="createBy" />
      <el-table-column label="更新人" align="center" prop="updateBy" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template #default="scope">
          <el-button link type="primary" icon="Edit" @click="handleUpdate(scope.row)" v-hasPermi="['soccer:attendance:edit']">修改</el-button>
          <el-button link type="primary" icon="Delete" @click="handleDelete(scope.row)" v-hasPermi="['soccer:attendance:remove']">删除</el-button>
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

    <!-- 添加或修改训练考勤记录对话框 -->
    <el-dialog :title="title" v-model="open" width="500px" append-to-body>
      <el-form ref="attendanceRef" :model="form" :rules="rules" label-width="100px">
        <el-form-item label="训练计划ID" prop="planId">
          <el-input v-model="form.planId" placeholder="请输入关联训练计划ID" />
        </el-form-item>
        <el-form-item label="球员ID" prop="playerId">
          <el-input v-model="form.playerId" placeholder="请输入关联球员ID" />
        </el-form-item>
        <el-form-item label="实际到场时间" prop="arrivalTime">
          <el-date-picker clearable
            v-model="form.arrivalTime"
            type="date"
            value-format="YYYY-MM-DD"
            placeholder="请选择实际到场时间">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="表现评分" prop="performanceRating">
          <el-input v-model="form.performanceRating" placeholder="请输入表现评分" />
        </el-form-item>
        <el-form-item label="技术观察记录" prop="technicalNotes">
          <el-input v-model="form.technicalNotes" type="textarea" placeholder="请输入内容" />
        </el-form-item>
        <el-form-item label="身体状态备注" prop="physicalCondition">
          <el-input v-model="form.physicalCondition" type="textarea" placeholder="请输入内容" />
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

<script setup name="Attendance">
import { listAttendance, getAttendance, delAttendance, addAttendance, updateAttendance } from "@/api/soccer/attendance";

const { proxy } = getCurrentInstance();

const attendanceList = ref([]);
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
    planId: null,
    playerId: null,
    attendanceStatus: null,
    arrivalTime: null,
    performanceRating: null,
    technicalNotes: null,
    physicalCondition: null,
  },
  rules: {
    planId: [
      { required: true, message: "关联训练计划ID不能为空", trigger: "blur" }
    ],
    playerId: [
      { required: true, message: "关联球员ID不能为空", trigger: "blur" }
    ],
  }
});

const { queryParams, form, rules } = toRefs(data);

/** 查询训练考勤记录列表 */
function getList() {
  loading.value = true;
  listAttendance(queryParams.value).then(response => {
    attendanceList.value = response.rows;
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
    attendanceId: null,
    planId: null,
    playerId: null,
    attendanceStatus: null,
    arrivalTime: null,
    performanceRating: null,
    technicalNotes: null,
    physicalCondition: null,
    delFlag: null,
    createBy: null,
    createTime: null,
    updateBy: null,
    updateTime: null
  };
  proxy.resetForm("attendanceRef");
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
  ids.value = selection.map(item => item.attendanceId);
  single.value = selection.length != 1;
  multiple.value = !selection.length;
}

/** 新增按钮操作 */
function handleAdd() {
  reset();
  open.value = true;
  title.value = "添加训练考勤记录";
}

/** 修改按钮操作 */
function handleUpdate(row) {
  reset();
  const _attendanceId = row.attendanceId || ids.value
  getAttendance(_attendanceId).then(response => {
    form.value = response.data;
    open.value = true;
    title.value = "修改训练考勤记录";
  });
}

/** 提交按钮 */
function submitForm() {
  proxy.$refs["attendanceRef"].validate(valid => {
    if (valid) {
      if (form.value.attendanceId != null) {
        updateAttendance(form.value).then(response => {
          proxy.$modal.msgSuccess("修改成功");
          open.value = false;
          getList();
        });
      } else {
        addAttendance(form.value).then(response => {
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
  const _attendanceIds = row.attendanceId || ids.value;
  proxy.$modal.confirm('是否确认删除训练考勤记录编号为"' + _attendanceIds + '"的数据项？').then(function() {
    return delAttendance(_attendanceIds);
  }).then(() => {
    getList();
    proxy.$modal.msgSuccess("删除成功");
  }).catch(() => {});
}

/** 导出按钮操作 */
function handleExport() {
  proxy.download('soccer/attendance/export', {
    ...queryParams.value
  }, `attendance_${new Date().getTime()}.xlsx`)
}

getList();
</script>
