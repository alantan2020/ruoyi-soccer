package com.ruoyi.soccer.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * SubPosition对象 tys_sub_position
 * 
 * @author ruoyi
 * @date 2025-03-10
 */
public class TysSubPosition extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键ID */
    private Long id;

    /** 子职位名称 */
    @Excel(name = "子职位名称")
    private String name;

    /** 关联大类ID */
    @Excel(name = "关联大类ID")
    private Long parentId;

    /** 子职位描述 */
    @Excel(name = "子职位描述")
    private String description;

    /** 子职位缩写 */
    @Excel(name = "子职位缩写")
    private String abbreviation;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setName(String name) 
    {
        this.name = name;
    }

    public String getName() 
    {
        return name;
    }
    public void setParentId(Long parentId) 
    {
        this.parentId = parentId;
    }

    public Long getParentId() 
    {
        return parentId;
    }
    public void setDescription(String description) 
    {
        this.description = description;
    }

    public String getDescription() 
    {
        return description;
    }
    public void setAbbreviation(String abbreviation) 
    {
        this.abbreviation = abbreviation;
    }

    public String getAbbreviation() 
    {
        return abbreviation;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("name", getName())
            .append("parentId", getParentId())
            .append("description", getDescription())
            .append("abbreviation", getAbbreviation())
            .toString();
    }
}
