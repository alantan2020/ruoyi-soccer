package com.ruoyi.soccer.domain;

import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 训练考勤记录对象 tys_training_attendance
 * 
 * @author AlanTan
 * @date 2025-03-10
 */
public class TysTrainingAttendance extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 考勤记录ID */
    private Long attendanceId;

    /** 关联训练计划ID */
    @Excel(name = "关联训练计划ID")
    private Long planId;

    /** 关联球员ID */
    @Excel(name = "关联球员ID")
    private Long playerId;

    /** 出勤状态（字典：出勤/请假/缺席） */
    @Excel(name = "出勤状态", readConverterExp = "字=典：出勤/请假/缺席")
    private String attendanceStatus;

    /** 实际到场时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "实际到场时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date arrivalTime;

    /** 表现评分（1-10分，0.5分间隔） */
    @Excel(name = "表现评分", readConverterExp = "1=-10分，0.5分间隔")
    private BigDecimal performanceRating;

    /** 技术观察记录 */
    @Excel(name = "技术观察记录")
    private String technicalNotes;

    /** 身体状态备注 */
    @Excel(name = "身体状态备注")
    private String physicalCondition;

    /** 删除标志 */
    private String delFlag;

    public void setAttendanceId(Long attendanceId) 
    {
        this.attendanceId = attendanceId;
    }

    public Long getAttendanceId() 
    {
        return attendanceId;
    }
    public void setPlanId(Long planId) 
    {
        this.planId = planId;
    }

    public Long getPlanId() 
    {
        return planId;
    }
    public void setPlayerId(Long playerId) 
    {
        this.playerId = playerId;
    }

    public Long getPlayerId() 
    {
        return playerId;
    }
    public void setAttendanceStatus(String attendanceStatus) 
    {
        this.attendanceStatus = attendanceStatus;
    }

    public String getAttendanceStatus() 
    {
        return attendanceStatus;
    }
    public void setArrivalTime(Date arrivalTime) 
    {
        this.arrivalTime = arrivalTime;
    }

    public Date getArrivalTime() 
    {
        return arrivalTime;
    }
    public void setPerformanceRating(BigDecimal performanceRating) 
    {
        this.performanceRating = performanceRating;
    }

    public BigDecimal getPerformanceRating() 
    {
        return performanceRating;
    }
    public void setTechnicalNotes(String technicalNotes) 
    {
        this.technicalNotes = technicalNotes;
    }

    public String getTechnicalNotes() 
    {
        return technicalNotes;
    }
    public void setPhysicalCondition(String physicalCondition) 
    {
        this.physicalCondition = physicalCondition;
    }

    public String getPhysicalCondition() 
    {
        return physicalCondition;
    }
    public void setDelFlag(String delFlag) 
    {
        this.delFlag = delFlag;
    }

    public String getDelFlag() 
    {
        return delFlag;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("attendanceId", getAttendanceId())
            .append("planId", getPlanId())
            .append("playerId", getPlayerId())
            .append("attendanceStatus", getAttendanceStatus())
            .append("arrivalTime", getArrivalTime())
            .append("performanceRating", getPerformanceRating())
            .append("technicalNotes", getTechnicalNotes())
            .append("physicalCondition", getPhysicalCondition())
            .append("delFlag", getDelFlag())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
