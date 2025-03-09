package com.ruoyi.soccer.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * PositionTyre对象 tys_position_type
 * 
 * @author AlanTan
 * @date 2025-03-10
 */
public class TysPositionType extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 序号 */
    private Long id;

    /** 职位大类名称 */
    @Excel(name = "职位大类名称")
    private String name;

    /** 职位大类描述 */
    @Excel(name = "职位大类描述")
    private String description;

    /** 职位大类缩写 */
    @Excel(name = "职位大类缩写")
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
            .append("description", getDescription())
            .append("abbreviation", getAbbreviation())
            .toString();
    }
}
