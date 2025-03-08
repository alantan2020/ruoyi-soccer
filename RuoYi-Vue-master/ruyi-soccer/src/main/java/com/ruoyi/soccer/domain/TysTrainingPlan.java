package com.ruoyi.soccer.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 训练计划对象 tys_training_plan
 * 
 * @author AlanTan
 * @date 2025-03-09
 */
public class TysTrainingPlan extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 训练计划ID */
    private Long planId;

    /** 训练主题（示例：战术配合训练） */
    @Excel(name = "训练主题", readConverterExp = "示=例：战术配合训练")
    private String planName;

    /** 训练日期（格式：YYYY-MM-DD） */
    @Excel(name = "训练日期", readConverterExp = "格=式：YYYY-MM-DD")
    private Date planDate;

    /** 开始时间（格式：HH:mm:ss） */
    @Excel(name = "开始时间", readConverterExp = "格=式：HH:mm:ss")
    private Date startTime;

    /** 结束时间（格式：HH:mm:ss） */
    @Excel(name = "结束时间", readConverterExp = "格=式：HH:mm:ss")
    private Date endTime;

    /** 训练类型（字典：技术/战术/体能） */
    @Excel(name = "训练类型", readConverterExp = "字=典：技术/战术/体能")
    private String trainingType;

    /** 训练内容（结构化大纲） */
    @Excel(name = "训练内容", readConverterExp = "结=构化大纲")
    private String trainingContent;

    /** 训练目标（可量化指标） */
    @Excel(name = "训练目标", readConverterExp = "可=量化指标")
    private String trainingObjectives;

    /** 训练场地（具体位置） */
    @Excel(name = "训练场地", readConverterExp = "具=体位置")
    private String location;

    /** 所需器材（JSON格式） */
    @Excel(name = "所需器材", readConverterExp = "J=SON格式")
    private String equipmentNeeds;

    /** 天气状况 */
    @Excel(name = "天气状况")
    private String weather;

    /** 删除标志 */
    @Excel(name = "删除标志")
    private String delFlag;

    public void setPlanId(Long planId) 
    {
        this.planId = planId;
    }

    public Long getPlanId() 
    {
        return planId;
    }
    public void setPlanName(String planName) 
    {
        this.planName = planName;
    }

    public String getPlanName() 
    {
        return planName;
    }
    public void setPlanDate(Date planDate) 
    {
        this.planDate = planDate;
    }

    public Date getPlanDate() 
    {
        return planDate;
    }
    public void setStartTime(Date startTime) 
    {
        this.startTime = startTime;
    }

    public Date getStartTime() 
    {
        return startTime;
    }
    public void setEndTime(Date endTime) 
    {
        this.endTime = endTime;
    }

    public Date getEndTime() 
    {
        return endTime;
    }
    public void setTrainingType(String trainingType) 
    {
        this.trainingType = trainingType;
    }

    public String getTrainingType() 
    {
        return trainingType;
    }
    public void setTrainingContent(String trainingContent) 
    {
        this.trainingContent = trainingContent;
    }

    public String getTrainingContent() 
    {
        return trainingContent;
    }
    public void setTrainingObjectives(String trainingObjectives) 
    {
        this.trainingObjectives = trainingObjectives;
    }

    public String getTrainingObjectives() 
    {
        return trainingObjectives;
    }
    public void setLocation(String location) 
    {
        this.location = location;
    }

    public String getLocation() 
    {
        return location;
    }
    public void setEquipmentNeeds(String equipmentNeeds) 
    {
        this.equipmentNeeds = equipmentNeeds;
    }

    public String getEquipmentNeeds() 
    {
        return equipmentNeeds;
    }
    public void setWeather(String weather) 
    {
        this.weather = weather;
    }

    public String getWeather() 
    {
        return weather;
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
            .append("planId", getPlanId())
            .append("planName", getPlanName())
            .append("planDate", getPlanDate())
            .append("startTime", getStartTime())
            .append("endTime", getEndTime())
            .append("trainingType", getTrainingType())
            .append("trainingContent", getTrainingContent())
            .append("trainingObjectives", getTrainingObjectives())
            .append("location", getLocation())
            .append("equipmentNeeds", getEquipmentNeeds())
            .append("weather", getWeather())
            .append("delFlag", getDelFlag())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
