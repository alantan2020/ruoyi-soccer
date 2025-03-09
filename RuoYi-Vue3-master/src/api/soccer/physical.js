import request from '@/utils/request'

// 查询身体数据列表
export function listPhysical(query) {
  return request({
    url: '/soccer/physical/list',
    method: 'get',
    params: query
  })
}

// 查询身体数据详细
export function getPhysical(dataId) {
  return request({
    url: '/soccer/physical/' + dataId,
    method: 'get'
  })
}

// 新增身体数据
export function addPhysical(data) {
  return request({
    url: '/soccer/physical',
    method: 'post',
    data: data
  })
}

// 修改身体数据
export function updatePhysical(data) {
  return request({
    url: '/soccer/physical',
    method: 'put',
    data: data
  })
}

// 删除身体数据
export function delPhysical(dataId) {
  return request({
    url: '/soccer/physical/' + dataId,
    method: 'delete'
  })
}
