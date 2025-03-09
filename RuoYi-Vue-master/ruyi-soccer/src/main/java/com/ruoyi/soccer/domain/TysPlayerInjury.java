package com.ruoyi.soccer.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 球员伤病追踪对象 tys_player_injury
 * 
 * @author ruoyi
 * @date 2025-03-10
 */
public class TysPlayerInjury extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 序号 */
    private Long injuryId;

    /** 球员ID */
    @Excel(name = "球员ID")
    private Long playerId;

    /** 受伤日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "受伤日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date injuryDate;

    /** 伤病类型 */
    @Excel(name = "伤病类型")
    private String injuryType;

    /** 恢复状态 */
    @Excel(name = "恢复状态")
    private String recoveryStatus;

    /** 预计恢复日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "预计恢复日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date expectedRecoveryDate;

    /** 医疗报告内容 */
    @Excel(name = "医疗报告内容")
    private String medicalReport;

    /** 康复训练计划 */
    @Excel(name = "康复训练计划")
    private String rehabilitationPlan;

    /** 删除标志 */
    private String delFlag;

    public void setInjuryId(Long injuryId) 
    {
        this.injuryId = injuryId;
    }

    public Long getInjuryId() 
    {
        return injuryId;
    }
    public void setPlayerId(Long playerId) 
    {
        this.playerId = playerId;
    }

    public Long getPlayerId() 
    {
        return playerId;
    }
    public void setInjuryDate(Date injuryDate) 
    {
        this.injuryDate = injuryDate;
    }

    public Date getInjuryDate() 
    {
        return injuryDate;
    }
    public void setInjuryType(String injuryType) 
    {
        this.injuryType = injuryType;
    }

    public String getInjuryType() 
    {
        return injuryType;
    }
    public void setRecoveryStatus(String recoveryStatus) 
    {
        this.recoveryStatus = recoveryStatus;
    }

    public String getRecoveryStatus() 
    {
        return recoveryStatus;
    }
    public void setExpectedRecoveryDate(Date expectedRecoveryDate) 
    {
        this.expectedRecoveryDate = expectedRecoveryDate;
    }

    public Date getExpectedRecoveryDate() 
    {
        return expectedRecoveryDate;
    }
    public void setMedicalReport(String medicalReport) 
    {
        this.medicalReport = medicalReport;
    }

    public String getMedicalReport() 
    {
        return medicalReport;
    }
    public void setRehabilitationPlan(String rehabilitationPlan) 
    {
        this.rehabilitationPlan = rehabilitationPlan;
    }

    public String getRehabilitationPlan() 
    {
        return rehabilitationPlan;
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
            .append("injuryId", getInjuryId())
            .append("playerId", getPlayerId())
            .append("injuryDate", getInjuryDate())
            .append("injuryType", getInjuryType())
            .append("recoveryStatus", getRecoveryStatus())
            .append("expectedRecoveryDate", getExpectedRecoveryDate())
            .append("medicalReport", getMedicalReport())
            .append("rehabilitationPlan", getRehabilitationPlan())
            .append("delFlag", getDelFlag())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
