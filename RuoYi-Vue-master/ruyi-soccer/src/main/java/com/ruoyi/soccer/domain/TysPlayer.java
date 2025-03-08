package com.ruoyi.soccer.domain;

import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 球员管理对象 tys_player
 * 
 * @author AlanTan
 * @date 2025-03-09
 */
public class TysPlayer extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 球员唯一标识ID */
    private Long playerId;

    /** 关联系统用户ID */
    @Excel(name = "关联系统用户ID")
    private Long userId;

    /** 球员姓名（中文全名） */
    @Excel(name = "球员姓名", readConverterExp = "中=文全名")
    private String name;

    /** 球员照片URL（存储图片的访问路径） */
    @Excel(name = "球员照片URL", readConverterExp = "存=储图片的访问路径")
    private String photoUrl;

    /** 出生日期（格式：YYYY-MM-DD） */
    @Excel(name = "出生日期", readConverterExp = "格=式：YYYY-MM-DD")
    private Date birthDate;

    /** 身高（单位：厘米，示例：175.5） */
    @Excel(name = "身高", readConverterExp = "单=位：厘米，示例：175.5")
    private BigDecimal height;

    /** 体重（单位：千克，示例：68.5） */
    @Excel(name = "体重", readConverterExp = "单=位：千克，示例：68.5")
    private BigDecimal weight;

    /** 场上位置（字典：前锋/中场/后卫/守门员） */
    @Excel(name = "场上位置", readConverterExp = "字=典：前锋/中场/后卫/守门员")
    private String position;

    /** 球衣号码（1-99） */
    @Excel(name = "球衣号码", readConverterExp = "1=-99")
    private Long jerseyNumber;

    /** 监护人联系电话 */
    @Excel(name = "监护人联系电话")
    private String contactPhone;

    /** 备用联系人电话 */
    @Excel(name = "备用联系人电话")
    private String guardianContact;

    /** 入队日期（格式：YYYY-MM-DD） */
    @Excel(name = "入队日期", readConverterExp = "格=式：YYYY-MM-DD")
    private Date joinDate;

    /** 医疗档案（含过敏史、重大伤病史） */
    @Excel(name = "医疗档案", readConverterExp = "含=过敏史、重大伤病史")
    private String medicalHistory;

    /** 删除标志（0-正常 1-已删除） */
    private String delFlag;

    public void setPlayerId(Long playerId) 
    {
        this.playerId = playerId;
    }

    public Long getPlayerId() 
    {
        return playerId;
    }
    public void setUserId(Long userId) 
    {
        this.userId = userId;
    }

    public Long getUserId() 
    {
        return userId;
    }
    public void setName(String name) 
    {
        this.name = name;
    }

    public String getName() 
    {
        return name;
    }
    public void setPhotoUrl(String photoUrl) 
    {
        this.photoUrl = photoUrl;
    }

    public String getPhotoUrl() 
    {
        return photoUrl;
    }
    public void setBirthDate(Date birthDate) 
    {
        this.birthDate = birthDate;
    }

    public Date getBirthDate() 
    {
        return birthDate;
    }
    public void setHeight(BigDecimal height) 
    {
        this.height = height;
    }

    public BigDecimal getHeight() 
    {
        return height;
    }
    public void setWeight(BigDecimal weight) 
    {
        this.weight = weight;
    }

    public BigDecimal getWeight() 
    {
        return weight;
    }
    public void setPosition(String position) 
    {
        this.position = position;
    }

    public String getPosition() 
    {
        return position;
    }
    public void setJerseyNumber(Long jerseyNumber) 
    {
        this.jerseyNumber = jerseyNumber;
    }

    public Long getJerseyNumber() 
    {
        return jerseyNumber;
    }
    public void setContactPhone(String contactPhone) 
    {
        this.contactPhone = contactPhone;
    }

    public String getContactPhone() 
    {
        return contactPhone;
    }
    public void setGuardianContact(String guardianContact) 
    {
        this.guardianContact = guardianContact;
    }

    public String getGuardianContact() 
    {
        return guardianContact;
    }
    public void setJoinDate(Date joinDate) 
    {
        this.joinDate = joinDate;
    }

    public Date getJoinDate() 
    {
        return joinDate;
    }
    public void setMedicalHistory(String medicalHistory) 
    {
        this.medicalHistory = medicalHistory;
    }

    public String getMedicalHistory() 
    {
        return medicalHistory;
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
            .append("playerId", getPlayerId())
            .append("userId", getUserId())
            .append("name", getName())
            .append("photoUrl", getPhotoUrl())
            .append("birthDate", getBirthDate())
            .append("height", getHeight())
            .append("weight", getWeight())
            .append("position", getPosition())
            .append("jerseyNumber", getJerseyNumber())
            .append("contactPhone", getContactPhone())
            .append("guardianContact", getGuardianContact())
            .append("joinDate", getJoinDate())
            .append("medicalHistory", getMedicalHistory())
            .append("delFlag", getDelFlag())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
