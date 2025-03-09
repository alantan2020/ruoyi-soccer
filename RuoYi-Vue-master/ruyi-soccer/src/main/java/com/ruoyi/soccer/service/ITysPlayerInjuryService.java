package com.ruoyi.soccer.service;

import java.util.List;
import com.ruoyi.soccer.domain.TysPlayerInjury;

/**
 * 球员伤病追踪Service接口
 * 
 * @author ruoyi
 * @date 2025-03-10
 */
public interface ITysPlayerInjuryService 
{
    /**
     * 查询球员伤病追踪
     * 
     * @param injuryId 球员伤病追踪主键
     * @return 球员伤病追踪
     */
    public TysPlayerInjury selectTysPlayerInjuryByInjuryId(Long injuryId);

    /**
     * 查询球员伤病追踪列表
     * 
     * @param tysPlayerInjury 球员伤病追踪
     * @return 球员伤病追踪集合
     */
    public List<TysPlayerInjury> selectTysPlayerInjuryList(TysPlayerInjury tysPlayerInjury);

    /**
     * 新增球员伤病追踪
     * 
     * @param tysPlayerInjury 球员伤病追踪
     * @return 结果
     */
    public int insertTysPlayerInjury(TysPlayerInjury tysPlayerInjury);

    /**
     * 修改球员伤病追踪
     * 
     * @param tysPlayerInjury 球员伤病追踪
     * @return 结果
     */
    public int updateTysPlayerInjury(TysPlayerInjury tysPlayerInjury);

    /**
     * 批量删除球员伤病追踪
     * 
     * @param injuryIds 需要删除的球员伤病追踪主键集合
     * @return 结果
     */
    public int deleteTysPlayerInjuryByInjuryIds(Long[] injuryIds);

    /**
     * 删除球员伤病追踪信息
     * 
     * @param injuryId 球员伤病追踪主键
     * @return 结果
     */
    public int deleteTysPlayerInjuryByInjuryId(Long injuryId);
}
