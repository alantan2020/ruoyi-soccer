package com.ruoyi.soccer.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.soccer.mapper.TysTrainingAttendanceMapper;
import com.ruoyi.soccer.domain.TysTrainingAttendance;
import com.ruoyi.soccer.service.ITysTrainingAttendanceService;

/**
 * 训练考勤记录Service业务层处理
 * 
 * @author AlanTan
 * @date 2025-03-10
 */
@Service
public class TysTrainingAttendanceServiceImpl implements ITysTrainingAttendanceService 
{
    @Autowired
    private TysTrainingAttendanceMapper tysTrainingAttendanceMapper;

    /**
     * 查询训练考勤记录
     * 
     * @param attendanceId 训练考勤记录主键
     * @return 训练考勤记录
     */
    @Override
    public TysTrainingAttendance selectTysTrainingAttendanceByAttendanceId(Long attendanceId)
    {
        return tysTrainingAttendanceMapper.selectTysTrainingAttendanceByAttendanceId(attendanceId);
    }

    /**
     * 查询训练考勤记录列表
     * 
     * @param tysTrainingAttendance 训练考勤记录
     * @return 训练考勤记录
     */
    @Override
    public List<TysTrainingAttendance> selectTysTrainingAttendanceList(TysTrainingAttendance tysTrainingAttendance)
    {
        return tysTrainingAttendanceMapper.selectTysTrainingAttendanceList(tysTrainingAttendance);
    }

    /**
     * 新增训练考勤记录
     * 
     * @param tysTrainingAttendance 训练考勤记录
     * @return 结果
     */
    @Override
    public int insertTysTrainingAttendance(TysTrainingAttendance tysTrainingAttendance)
    {
        tysTrainingAttendance.setCreateTime(DateUtils.getNowDate());
        return tysTrainingAttendanceMapper.insertTysTrainingAttendance(tysTrainingAttendance);
    }

    /**
     * 修改训练考勤记录
     * 
     * @param tysTrainingAttendance 训练考勤记录
     * @return 结果
     */
    @Override
    public int updateTysTrainingAttendance(TysTrainingAttendance tysTrainingAttendance)
    {
        tysTrainingAttendance.setUpdateTime(DateUtils.getNowDate());
        return tysTrainingAttendanceMapper.updateTysTrainingAttendance(tysTrainingAttendance);
    }

    /**
     * 批量删除训练考勤记录
     * 
     * @param attendanceIds 需要删除的训练考勤记录主键
     * @return 结果
     */
    @Override
    public int deleteTysTrainingAttendanceByAttendanceIds(Long[] attendanceIds)
    {
        return tysTrainingAttendanceMapper.deleteTysTrainingAttendanceByAttendanceIds(attendanceIds);
    }

    /**
     * 删除训练考勤记录信息
     * 
     * @param attendanceId 训练考勤记录主键
     * @return 结果
     */
    @Override
    public int deleteTysTrainingAttendanceByAttendanceId(Long attendanceId)
    {
        return tysTrainingAttendanceMapper.deleteTysTrainingAttendanceByAttendanceId(attendanceId);
    }
}
