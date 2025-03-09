package com.ruoyi.soccer.service;

import java.util.List;
import com.ruoyi.soccer.domain.TysTrainingAttendance;

/**
 * 训练考勤记录Service接口
 * 
 * @author AlanTan
 * @date 2025-03-10
 */
public interface ITysTrainingAttendanceService 
{
    /**
     * 查询训练考勤记录
     * 
     * @param attendanceId 训练考勤记录主键
     * @return 训练考勤记录
     */
    public TysTrainingAttendance selectTysTrainingAttendanceByAttendanceId(Long attendanceId);

    /**
     * 查询训练考勤记录列表
     * 
     * @param tysTrainingAttendance 训练考勤记录
     * @return 训练考勤记录集合
     */
    public List<TysTrainingAttendance> selectTysTrainingAttendanceList(TysTrainingAttendance tysTrainingAttendance);

    /**
     * 新增训练考勤记录
     * 
     * @param tysTrainingAttendance 训练考勤记录
     * @return 结果
     */
    public int insertTysTrainingAttendance(TysTrainingAttendance tysTrainingAttendance);

    /**
     * 修改训练考勤记录
     * 
     * @param tysTrainingAttendance 训练考勤记录
     * @return 结果
     */
    public int updateTysTrainingAttendance(TysTrainingAttendance tysTrainingAttendance);

    /**
     * 批量删除训练考勤记录
     * 
     * @param attendanceIds 需要删除的训练考勤记录主键集合
     * @return 结果
     */
    public int deleteTysTrainingAttendanceByAttendanceIds(Long[] attendanceIds);

    /**
     * 删除训练考勤记录信息
     * 
     * @param attendanceId 训练考勤记录主键
     * @return 结果
     */
    public int deleteTysTrainingAttendanceByAttendanceId(Long attendanceId);
}
