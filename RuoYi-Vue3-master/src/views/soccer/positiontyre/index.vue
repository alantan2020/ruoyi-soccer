<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryRef" :inline="true" v-show="showSearch" label-width="100px">
      <el-form-item label="三大线" prop="name">
        <el-input
          v-model="queryParams.name"
          placeholder="请输入职位大类名称"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="三大线缩写" prop="abbreviation" >
        <el-input
          v-model="queryParams.abbreviation"
          placeholder="请输入职位大类缩写"
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
          v-hasPermi="['soccer:positiontyre:add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="Edit"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['soccer:positiontyre:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="Delete"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['soccer:positiontyre:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="Download"
          @click="handleExport"
          v-hasPermi="['soccer:positiontyre:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar v-model:showSearch="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="positiontyreList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="序号" type="index" width="50" align="center" prop="id" />
      <el-table-column label="职位大类名称" align="center" prop="name" />
      <el-table-column label="职位大类描述" align="center" prop="description">
        <template #default="{ row }">
          {{ row.description.replace(/<\/?p>/g, '') }}
        </template>
      </el-table-column>
      <el-table-column label="职位大类缩写" align="center" prop="abbreviation" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template #default="scope">
          <el-button link type="primary" icon="Edit" @click="handleUpdate(scope.row)" v-hasPermi="['soccer:positiontyre:edit']">修改</el-button>
          <el-button link type="primary" icon="Delete" @click="handleDelete(scope.row)" v-hasPermi="['soccer:positiontyre:remove']">删除</el-button>
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

    <!-- 添加或修改PositionTyre对话框 -->
    <el-dialog :title="title" v-model="open" width="500px" append-to-body>
      <el-form ref="positiontyreRef" :model="form" :rules="rules" label-width="120px">
        <el-form-item label="职位大类名称" prop="name">
          <el-input v-model="form.name" placeholder="请输入职位大类名称" />
        </el-form-item>
        <el-form-item label="职位大类描述">
          <editor v-model="form.description" :min-height="192"/>
        </el-form-item>
        <el-form-item label="职位大类缩写" prop="abbreviation">
          <el-input v-model="form.abbreviation" placeholder="请输入职位大类缩写" />
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

<script setup name="Positiontyre">
import { listPositiontyre, getPositiontyre, delPositiontyre, addPositiontyre, updatePositiontyre } from "@/api/soccer/positiontyre";

const { proxy } = getCurrentInstance();

const positiontyreList = ref([]);
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
    name: null,
    description: null,
    abbreviation: null
  },
  rules: {
  }
});

const { queryParams, form, rules } = toRefs(data);

/** 查询PositionTyre列表 */
function getList() {
  loading.value = true;
  listPositiontyre(queryParams.value).then(response => {
    positiontyreList.value = response.rows;
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
    id: null,
    name: null,
    description: null,
    abbreviation: null
  };
  proxy.resetForm("positiontyreRef");
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
  ids.value = selection.map(item => item.id);
  single.value = selection.length != 1;
  multiple.value = !selection.length;
}

/** 新增按钮操作 */
function handleAdd() {
  reset();
  open.value = true;
  title.value = "添加PositionTyre";
}

/** 修改按钮操作 */
function handleUpdate(row) {
  reset();
  const _id = row.id || ids.value
  getPositiontyre(_id).then(response => {
    form.value = response.data;
    open.value = true;
    title.value = "修改PositionTyre";
  });
}

/** 提交按钮 */
function submitForm() {
  proxy.$refs["positiontyreRef"].validate(valid => {
    if (valid) {
      if (form.value.id != null) {
        updatePositiontyre(form.value).then(response => {
          proxy.$modal.msgSuccess("修改成功");
          open.value = false;
          getList();
        });
      } else {
        addPositiontyre(form.value).then(response => {
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
  const _ids = row.id || ids.value;
  proxy.$modal.confirm('是否确认删除PositionTyre编号为"' + _ids + '"的数据项？').then(function() {
    return delPositiontyre(_ids);
  }).then(() => {
    getList();
    proxy.$modal.msgSuccess("删除成功");
  }).catch(() => {});
}

/** 导出按钮操作 */
function handleExport() {
  proxy.download('soccer/positiontyre/export', {
    ...queryParams.value
  }, `positiontyre_${new Date().getTime()}.xlsx`)
}

getList();
</script>
