import request from '@/utils/request'

// 查询训练参与人员列表
export function listTrainingplayers(query) {
  return request({
    url: '/soccer/trainingplayers/list',
    method: 'get',
    params: query
  })
}

// 查询训练参与人员详细
export function getTrainingplayers(id) {
  return request({
    url: '/soccer/trainingplayers/' + id,
    method: 'get'
  })
}

// 新增训练参与人员
export function addTrainingplayers(data) {
  return request({
    url: '/soccer/trainingplayers',
    method: 'post',
    data: data
  })
}

// 修改训练参与人员
export function updateTrainingplayers(data) {
  return request({
    url: '/soccer/trainingplayers',
    method: 'put',
    data: data
  })
}

// 删除训练参与人员
export function delTrainingplayers(id) {
  return request({
    url: '/soccer/trainingplayers/' + id,
    method: 'delete'
  })
}
