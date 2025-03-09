import request from '@/utils/request'

// 查询PositionTyre列表
export function listPositiontyre(query) {
  return request({
    url: '/soccer/positiontyre/list',
    method: 'get',
    params: query
  })
}

// 查询PositionTyre详细
export function getPositiontyre(id) {
  return request({
    url: '/soccer/positiontyre/' + id,
    method: 'get'
  })
}

// 新增PositionTyre
export function addPositiontyre(data) {
  return request({
    url: '/soccer/positiontyre',
    method: 'post',
    data: data
  })
}

// 修改PositionTyre
export function updatePositiontyre(data) {
  return request({
    url: '/soccer/positiontyre',
    method: 'put',
    data: data
  })
}

// 删除PositionTyre
export function delPositiontyre(id) {
  return request({
    url: '/soccer/positiontyre/' + id,
    method: 'delete'
  })
}
