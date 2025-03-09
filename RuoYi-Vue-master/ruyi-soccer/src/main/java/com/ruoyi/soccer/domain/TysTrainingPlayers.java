package com.ruoyi.soccer.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 训练参与人员对象 tys_training_players
 * 
 * @author ruoyi
 * @date 2025-03-10
 */
public class TysTrainingPlayers extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 关联记录ID */
    private Long id;

    /** 训练计划ID */
    @Excel(name = "训练计划ID")
    private Long planId;

    /** 球员ID */
    @Excel(name = "球员ID")
    private Long playerId;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
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

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("planId", getPlanId())
            .append("playerId", getPlayerId())
            .toString();
    }
}
