<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryRef" :inline="true" v-show="showSearch" label-width="100px">
      <el-form-item label="职位名称" prop="name">
        <el-input
          v-model="queryParams.name"
          placeholder="请输入子职位名称"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="三大线" prop="parentId">
        <el-select v-model="queryParams.parentId" placeholder="请选择关联的区域" style="width: 160px;">
            <el-option
              v-for="item in positiontyreList"
              :key="item.id"
              :label="item.name"
              :value="item.id"
            ></el-option>
          </el-select>
      </el-form-item>
      <el-form-item label="子职位缩写" prop="abbreviation">
        <el-input
          v-model="queryParams.abbreviation"
          placeholder="请输入子职位缩写"
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
          v-hasPermi="['soccer:subposition:add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="Edit"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['soccer:subposition:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="Delete"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['soccer:subposition:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="Download"
          @click="handleExport"
          v-hasPermi="['soccer:subposition:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar v-model:showSearch="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="subpositionList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="序号" type="index" width="50" align="center" prop="id" />
      <el-table-column label="职位名称" align="center" prop="name" />
      <!-- <el-table-column label="类属于" align="center" prop="parentId" /> -->
      <el-table-column label="职位大类描述" align="center" prop="description">
        <template #default="{ row }">
          {{ row.description.replace(/<\/?p>/g, '') }}
        </template>
      </el-table-column>
      <el-table-column label="职位缩写" align="center" prop="abbreviation" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template #default="scope">
          <el-button link type="primary" icon="Edit" @click="handleUpdate(scope.row)" v-hasPermi="['soccer:subposition:edit']">修改</el-button>
          <el-button link type="primary" icon="Delete" @click="handleDelete(scope.row)" v-hasPermi="['soccer:subposition:remove']">删除</el-button>
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

    <!-- 添加或修改SubPosition对话框 -->
    <el-dialog :title="title" v-model="open" width="600px" append-to-body>
      <el-form ref="subpositionRef" :model="form" :rules="rules" label-width="120px">
        <el-form-item label="职位名称" prop="name">
          <el-input v-model="form.name" placeholder="请输入职位名称" />
        </el-form-item>
        <el-form-item label="三大线" prop="parentId">
          <el-select v-model="form.parentId" placeholder="请选择哪条线上的" style="width: 160px;">
            <el-option
              v-for="item in positiontyreList"
              :key="item.id"
              :label="item.name"
              :value="item.id"
            ></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="职位描述">
          <editor v-model="form.description" :min-height="192"/>
        </el-form-item>
        <el-form-item label="职位缩写" prop="abbreviation">
          <el-input v-model="form.abbreviation" placeholder="请输入职位缩写" />
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

<script setup name="Subposition">
import { listSubposition, getSubposition, delSubposition, addSubposition, updateSubposition } from "@/api/soccer/subposition";
import { listPositiontyre } from "@/api/soccer/positiontyre";
import { loadAllParams } from "@/api/page";

const { proxy } = getCurrentInstance();

const subpositionList = ref([]);
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
    parentId: null,
    description: null,
    abbreviation: null
  },
  rules: {
  }
});

const { queryParams, form, rules } = toRefs(data);

/** 查询SubPosition列表 */
function getList() {
  loading.value = true;
  listSubposition(queryParams.value).then(response => {
    subpositionList.value = response.rows;
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
    parentId: null,
    description: null,
    abbreviation: null
  };
  proxy.resetForm("subpositionRef");
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
  title.value = "添加SubPosition";
}

/** 修改按钮操作 */
function handleUpdate(row) {
  reset();
  const _id = row.id || ids.value
  getSubposition(_id).then(response => {
    form.value = response.data;
    open.value = true;
    title.value = "修改SubPosition";
  });
}

/** 提交按钮 */
function submitForm() {
  proxy.$refs["subpositionRef"].validate(valid => {
    if (valid) {
      if (form.value.id != null) {
        updateSubposition(form.value).then(response => {
          proxy.$modal.msgSuccess("修改成功");
          open.value = false;
          getList();
        });
      } else {
        addSubposition(form.value).then(response => {
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
  proxy.$modal.confirm('是否确认删除SubPosition编号为"' + _ids + '"的数据项？').then(function() {
    return delSubposition(_ids);
  }).then(() => {
    getList();
    proxy.$modal.msgSuccess("删除成功");
  }).catch(() => {});
}

/** 导出按钮操作 */
function handleExport() {
  proxy.download('soccer/subposition/export', {
    ...queryParams.value
  }, `subposition_${new Date().getTime()}.xlsx`)
}


/** 查询PositionTyre列表  三大线列表 */
const positiontyreList = ref([]);
function positionGetList() {
  loading.value = true;
  listPositiontyre(loadAllParams).then(response => {
    positiontyreList.value = response.rows;   
    loading.value = false;
  });
}



positionGetList();  
getList();
</script>
