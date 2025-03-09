package com.ruoyi.soccer.domain;

import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 身体数据对象 tys_physical_data
 * 
 * @author AlanTan
 * @date 2025-03-10
 */
public class TysPhysicalData extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 身体数据ID */
    private Long dataId;

    /** 关联球员ID */
    @Excel(name = "关联球员ID")
    private Long playerId;

    /** 记录日期（每月1日） */
    @Excel(name = "记录日期", readConverterExp = "每=月1日")
    private Date recordDate;

    /** 体重（kg） */
    @Excel(name = "体重", readConverterExp = "k=g")
    private BigDecimal weight;

    /** 体脂率（%） */
    @Excel(name = "体脂率", readConverterExp = "%=")
    private BigDecimal bodyFat;

    /** 肌肉量（kg） */
    @Excel(name = "肌肉量", readConverterExp = "k=g")
    private BigDecimal muscleMass;

    /** 最大摄氧量 */
    @Excel(name = "最大摄氧量")
    private BigDecimal vo2max;

    /** 30米冲刺（秒） */
    @Excel(name = "30米冲刺", readConverterExp = "秒=")
    private BigDecimal sprint30m;

    /** 垂直跳跃（cm） */
    @Excel(name = "垂直跳跃", readConverterExp = "c=m")
    private BigDecimal verticalJump;

    /** 卧推重量（kg） */
    @Excel(name = "卧推重量", readConverterExp = "k=g")
    private Long benchPress;

    /** 删除标志 */
    private String delFlag;

    public void setDataId(Long dataId) 
    {
        this.dataId = dataId;
    }

    public Long getDataId() 
    {
        return dataId;
    }
    public void setPlayerId(Long playerId) 
    {
        this.playerId = playerId;
    }

    public Long getPlayerId() 
    {
        return playerId;
    }
    public void setRecordDate(Date recordDate) 
    {
        this.recordDate = recordDate;
    }

    public Date getRecordDate() 
    {
        return recordDate;
    }
    public void setWeight(BigDecimal weight) 
    {
        this.weight = weight;
    }

    public BigDecimal getWeight() 
    {
        return weight;
    }
    public void setBodyFat(BigDecimal bodyFat) 
    {
        this.bodyFat = bodyFat;
    }

    public BigDecimal getBodyFat() 
    {
        return bodyFat;
    }
    public void setMuscleMass(BigDecimal muscleMass) 
    {
        this.muscleMass = muscleMass;
    }

    public BigDecimal getMuscleMass() 
    {
        return muscleMass;
    }
    public void setVo2max(BigDecimal vo2max) 
    {
        this.vo2max = vo2max;
    }

    public BigDecimal getVo2max() 
    {
        return vo2max;
    }
    public void setSprint30m(BigDecimal sprint30m) 
    {
        this.sprint30m = sprint30m;
    }

    public BigDecimal getSprint30m() 
    {
        return sprint30m;
    }
    public void setVerticalJump(BigDecimal verticalJump) 
    {
        this.verticalJump = verticalJump;
    }

    public BigDecimal getVerticalJump() 
    {
        return verticalJump;
    }
    public void setBenchPress(Long benchPress) 
    {
        this.benchPress = benchPress;
    }

    public Long getBenchPress() 
    {
        return benchPress;
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
            .append("dataId", getDataId())
            .append("playerId", getPlayerId())
            .append("recordDate", getRecordDate())
            .append("weight", getWeight())
            .append("bodyFat", getBodyFat())
            .append("muscleMass", getMuscleMass())
            .append("vo2max", getVo2max())
            .append("sprint30m", getSprint30m())
            .append("verticalJump", getVerticalJump())
            .append("benchPress", getBenchPress())
            .append("delFlag", getDelFlag())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
