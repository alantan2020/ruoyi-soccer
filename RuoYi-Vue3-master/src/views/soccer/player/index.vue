<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryRef" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="userId" prop="userId">
        <el-input
          v-model="queryParams.userId"
          placeholder="请输入关联系统用户ID"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="球员姓名" prop="name">
        <el-input
          v-model="queryParams.name"
          placeholder="请输入球员姓名"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="出生日期" prop="birthDate">
        <el-date-picker clearable
          v-model="queryParams.birthDate"
          type="date"
          value-format="YYYY-MM-DD"
          placeholder="请选择出生日期">
        </el-date-picker>
      </el-form-item>
      <el-form-item label="身高" prop="height">
        <el-input
          v-model="queryParams.height"
          placeholder="请输入身高"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="体重" prop="weight">
        <el-input
          v-model="queryParams.weight"
          placeholder="请输入体重"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="场上位置" prop="position">
        <el-select v-model="queryParams.position" placeholder="请选择场上位置" clearable>
          <el-option
            v-for="dict in position"
            :key="dict.value"
            :label="dict.label"
            :value="dict.value"
          />
        </el-select>
      </el-form-item>
      <el-form-item label="球衣号码" prop="jerseyNumber">
        <el-input
          v-model="queryParams.jerseyNumber"
          placeholder="请输入球衣号码"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      
      <el-form-item label="入队日期" prop="joinDate">
        <el-date-picker clearable
          v-model="queryParams.joinDate"
          type="date"
          value-format="YYYY-MM-DD"
          placeholder="请选择入队日期">
        </el-date-picker>
      </el-form-item>
      <el-form-item label="创建人" prop="createBy">
        <el-input
          v-model="queryParams.createBy"
          placeholder="请输入创建人"
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
          v-hasPermi="['soccer:player:add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="Edit"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['soccer:player:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="Delete"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['soccer:player:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="Download"
          @click="handleExport"
          v-hasPermi="['soccer:player:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar v-model:showSearch="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="playerList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="序号" type="index" width="50" align="center" prop="playerId" />
      <el-table-column label="userId" align="center" prop="userId" />
      <el-table-column label="球员姓名" align="center" prop="name" />
      <el-table-column label="照片" align="center" prop="photoUrl" width="50">
        <template #default="scope">
          <image-preview :src="scope.row.photoUrl" :width="50" :height="50"/>
        </template>
      </el-table-column>
      <el-table-column label="出生日期" align="center" prop="birthDate" width="180">
        <template #default="scope">
          <span>{{ parseTime(scope.row.birthDate, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="身高" align="center" prop="height" />
      <el-table-column label="体重" align="center" prop="weight" />
      <el-table-column label="场上位置" align="center" prop="position">
        <template #default="scope">
          <dict-tag :options="position" :value="scope.row.position"/>
        </template>
      </el-table-column>
      <el-table-column label="球衣号码" align="center" prop="jerseyNumber" />
      <el-table-column label="监护人联系电话" align="center" prop="contactPhone" width="120" />
      <el-table-column label="备用联系人电话" align="center" prop="guardianContact" width="120" />
      <el-table-column label="入队日期" align="center" prop="joinDate" width="180">
        <template #default="scope">
          <span>{{ parseTime(scope.row.joinDate, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="医疗档案" align="center" prop="medicalHistory" show-overflow-tooltip />
      <el-table-column label="创建人" align="center" prop="createBy" />
      <el-table-column label="更新人" align="center" prop="updateBy" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template #default="scope">
          <el-button link type="primary" icon="Edit" @click="handleUpdate(scope.row)" v-hasPermi="['soccer:player:edit']">修改</el-button>
          <el-button link type="primary" icon="Delete" @click="handleDelete(scope.row)" v-hasPermi="['soccer:player:remove']">删除</el-button>
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

    <!-- 添加或修改球员管理对话框 -->
    <el-dialog :title="title" v-model="open" width="500px" append-to-body>
      <el-form ref="playerRef" :model="form" :rules="rules" label-width="120px">
        <el-form-item label="userId" prop="userId">
          <el-input v-model="form.userId" placeholder="请输入关联系统用户ID" />
        </el-form-item>
        <el-form-item label="球员姓名" prop="name">
          <el-input v-model="form.name" placeholder="请输入球员姓名" />
        </el-form-item>
        <el-form-item label="球员照片" prop="photoUrl">
          <image-upload v-model="form.photoUrl"/>
        </el-form-item>
        <el-form-item label="出生日期" prop="birthDate">
          <el-date-picker clearable
            v-model="form.birthDate"
            type="date"
            value-format="YYYY-MM-DD"
            placeholder="请选择出生日期">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="身高" prop="height">
          <el-input v-model="form.height" placeholder="请输入身高" />
        </el-form-item>
        <el-form-item label="体重" prop="weight">
          <el-input v-model="form.weight" placeholder="请输入体重" />
        </el-form-item>
        <el-form-item label="场上位置" prop="position">
          <el-select v-model="form.position" placeholder="请选择场上位置">
            <el-option
              v-for="dict in position"
              :key="dict.value"
              :label="dict.label"
              :value="dict.value"
            ></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="球衣号码" prop="jerseyNumber">
          <el-input v-model="form.jerseyNumber" placeholder="请输入球衣号码" />
        </el-form-item>
        <el-form-item label="监护人电话" prop="contactPhone">
          <el-input v-model="form.contactPhone" placeholder="请输入监护人联系电话" />
        </el-form-item>
        <el-form-item label="备用联系人电话" prop="guardianContact">
          <el-input v-model="form.guardianContact" placeholder="请输入备用联系人电话" />
        </el-form-item>
        <el-form-item label="入队日期" prop="joinDate">
          <el-date-picker clearable
            v-model="form.joinDate"
            type="date"
            value-format="YYYY-MM-DD"
            placeholder="请选择入队日期">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="医疗档案">
          <editor v-model="form.medicalHistory" :min-height="192"/>
        </el-form-item>
        <el-form-item label="删除标志" prop="delFlag">
          <el-select v-model="form.delFlag" placeholder="请选择删除标志">
            <el-option
              v-for="dict in sys_yes_no"
              :key="dict.value"
              :label="dict.label"
              :value="dict.value"
            ></el-option>
          </el-select>
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

<script setup name="Player">
import { listPlayer, getPlayer, delPlayer, addPlayer, updatePlayer } from "@/api/soccer/player";

const { proxy } = getCurrentInstance();
const { position, sys_yes_no } = proxy.useDict('position', 'sys_yes_no');

const playerList = ref([]);
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
    userId: null,
    name: null,
    photoUrl: null,
    birthDate: null,
    height: null,
    weight: null,
    position: null,
    jerseyNumber: null,
    contactPhone: null,
    guardianContact: null,
    joinDate: null,
    medicalHistory: null,
    createBy: null,
    updateBy: null,
  },
  rules: {
    name: [
      { required: true, message: "球员姓名不能为空", trigger: "blur" }
    ],
  }
});

const { queryParams, form, rules } = toRefs(data);

/** 查询球员管理列表 */
function getList() {
  loading.value = true;
  listPlayer(queryParams.value).then(response => {
    playerList.value = response.rows;
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
    playerId: null,
    userId: null,
    name: null,
    photoUrl: null,
    birthDate: null,
    height: null,
    weight: null,
    position: null,
    jerseyNumber: null,
    contactPhone: null,
    guardianContact: null,
    joinDate: null,
    medicalHistory: null,
    delFlag: null,
    createBy: null,
    createTime: null,
    updateBy: null,
    updateTime: null
  };
  proxy.resetForm("playerRef");
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
  ids.value = selection.map(item => item.playerId);
  single.value = selection.length != 1;
  multiple.value = !selection.length;
}

/** 新增按钮操作 */
function handleAdd() {
  reset();
  open.value = true;
  title.value = "添加球员管理";
}

/** 修改按钮操作 */
function handleUpdate(row) {
  reset();
  const _playerId = row.playerId || ids.value
  getPlayer(_playerId).then(response => {
    form.value = response.data;
    open.value = true;
    title.value = "修改球员管理";
  });
}

/** 提交按钮 */
function submitForm() {
  proxy.$refs["playerRef"].validate(valid => {
    if (valid) {
      if (form.value.playerId != null) {
        updatePlayer(form.value).then(response => {
          proxy.$modal.msgSuccess("修改成功");
          open.value = false;
          getList();
        });
      } else {
        addPlayer(form.value).then(response => {
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
  const _playerIds = row.playerId || ids.value;
  proxy.$modal.confirm('是否确认删除球员管理编号为"' + _playerIds + '"的数据项？').then(function() {
    return delPlayer(_playerIds);
  }).then(() => {
    getList();
    proxy.$modal.msgSuccess("删除成功");
  }).catch(() => {});
}

/** 导出按钮操作 */
function handleExport() {
  proxy.download('soccer/player/export', {
    ...queryParams.value
  }, `player_${new Date().getTime()}.xlsx`)
}

getList();
</script>
