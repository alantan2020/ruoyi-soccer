import request from '@/utils/request'

// 查询SubPosition列表
export function listSubposition(query) {
  return request({
    url: '/soccer/subposition/list',
    method: 'get',
    params: query
  })
}

// 查询SubPosition详细
export function getSubposition(id) {
  return request({
    url: '/soccer/subposition/' + id,
    method: 'get'
  })
}

// 新增SubPosition
export function addSubposition(data) {
  return request({
    url: '/soccer/subposition',
    method: 'post',
    data: data
  })
}

// 修改SubPosition
export function updateSubposition(data) {
  return request({
    url: '/soccer/subposition',
    method: 'put',
    data: data
  })
}

// 删除SubPosition
export function delSubposition(id) {
  return request({
    url: '/soccer/subposition/' + id,
    method: 'delete'
  })
}
