import request from '@/utils/request'

// 查询球员伤病追踪列表
export function listInjury(query) {
  return request({
    url: '/soccer/injury/list',
    method: 'get',
    params: query
  })
}

// 查询球员伤病追踪详细
export function getInjury(injuryId) {
  return request({
    url: '/soccer/injury/' + injuryId,
    method: 'get'
  })
}

// 新增球员伤病追踪
export function addInjury(data) {
  return request({
    url: '/soccer/injury',
    method: 'post',
    data: data
  })
}

// 修改球员伤病追踪
export function updateInjury(data) {
  return request({
    url: '/soccer/injury',
    method: 'put',
    data: data
  })
}

// 删除球员伤病追踪
export function delInjury(injuryId) {
  return request({
    url: '/soccer/injury/' + injuryId,
    method: 'delete'
  })
}
