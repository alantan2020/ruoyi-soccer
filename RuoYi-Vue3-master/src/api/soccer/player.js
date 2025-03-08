import request from '@/utils/request'

// 查询球员管理列表
export function listPlayer(query) {
  return request({
    url: '/soccer/player/list',
    method: 'get',
    params: query
  })
}

// 查询球员管理详细
export function getPlayer(playerId) {
  return request({
    url: '/soccer/player/' + playerId,
    method: 'get'
  })
}

// 新增球员管理
export function addPlayer(data) {
  return request({
    url: '/soccer/player',
    method: 'post',
    data: data
  })
}

// 修改球员管理
export function updatePlayer(data) {
  return request({
    url: '/soccer/player',
    method: 'put',
    data: data
  })
}

// 删除球员管理
export function delPlayer(playerId) {
  return request({
    url: '/soccer/player/' + playerId,
    method: 'delete'
  })
}
