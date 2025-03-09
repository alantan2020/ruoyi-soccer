import request from '@/utils/request'

// 查询训练考勤记录列表
export function listAttendance(query) {
  return request({
    url: '/soccer/attendance/list',
    method: 'get',
    params: query
  })
}

// 查询训练考勤记录详细
export function getAttendance(attendanceId) {
  return request({
    url: '/soccer/attendance/' + attendanceId,
    method: 'get'
  })
}

// 新增训练考勤记录
export function addAttendance(data) {
  return request({
    url: '/soccer/attendance',
    method: 'post',
    data: data
  })
}

// 修改训练考勤记录
export function updateAttendance(data) {
  return request({
    url: '/soccer/attendance',
    method: 'put',
    data: data
  })
}

// 删除训练考勤记录
export function delAttendance(attendanceId) {
  return request({
    url: '/soccer/attendance/' + attendanceId,
    method: 'delete'
  })
}
