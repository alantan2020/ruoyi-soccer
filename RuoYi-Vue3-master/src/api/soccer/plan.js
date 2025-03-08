import request from '@/utils/request'

// 查询训练计划列表
export function listPlan(query) {
  return request({
    url: '/soccer/plan/list',
    method: 'get',
    params: query
  })
}

// 查询训练计划详细
export function getPlan(planId) {
  return request({
    url: '/soccer/plan/' + planId,
    method: 'get'
  })
}

// 新增训练计划
export function addPlan(data) {
  return request({
    url: '/soccer/plan',
    method: 'post',
    data: data
  })
}

// 修改训练计划
export function updatePlan(data) {
  return request({
    url: '/soccer/plan',
    method: 'put',
    data: data
  })
}

// 删除训练计划
export function delPlan(planId) {
  return request({
    url: '/soccer/plan/' + planId,
    method: 'delete'
  })
}
