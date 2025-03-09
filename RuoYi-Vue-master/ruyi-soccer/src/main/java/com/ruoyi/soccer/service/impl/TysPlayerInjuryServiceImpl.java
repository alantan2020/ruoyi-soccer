package com.ruoyi.soccer.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.soccer.mapper.TysPlayerInjuryMapper;
import com.ruoyi.soccer.domain.TysPlayerInjury;
import com.ruoyi.soccer.service.ITysPlayerInjuryService;

/**
 * 球员伤病追踪Service业务层处理
 * 
 * @author ruoyi
 * @date 2025-03-10
 */
@Service
public class TysPlayerInjuryServiceImpl implements ITysPlayerInjuryService 
{
    @Autowired
    private TysPlayerInjuryMapper tysPlayerInjuryMapper;

    /**
     * 查询球员伤病追踪
     * 
     * @param injuryId 球员伤病追踪主键
     * @return 球员伤病追踪
     */
    @Override
    public TysPlayerInjury selectTysPlayerInjuryByInjuryId(Long injuryId)
    {
        return tysPlayerInjuryMapper.selectTysPlayerInjuryByInjuryId(injuryId);
    }

    /**
     * 查询球员伤病追踪列表
     * 
     * @param tysPlayerInjury 球员伤病追踪
     * @return 球员伤病追踪
     */
    @Override
    public List<TysPlayerInjury> selectTysPlayerInjuryList(TysPlayerInjury tysPlayerInjury)
    {
        return tysPlayerInjuryMapper.selectTysPlayerInjuryList(tysPlayerInjury);
    }

    /**
     * 新增球员伤病追踪
     * 
     * @param tysPlayerInjury 球员伤病追踪
     * @return 结果
     */
    @Override
    public int insertTysPlayerInjury(TysPlayerInjury tysPlayerInjury)
    {
        tysPlayerInjury.setCreateTime(DateUtils.getNowDate());
        return tysPlayerInjuryMapper.insertTysPlayerInjury(tysPlayerInjury);
    }

    /**
     * 修改球员伤病追踪
     * 
     * @param tysPlayerInjury 球员伤病追踪
     * @return 结果
     */
    @Override
    public int updateTysPlayerInjury(TysPlayerInjury tysPlayerInjury)
    {
        tysPlayerInjury.setUpdateTime(DateUtils.getNowDate());
        return tysPlayerInjuryMapper.updateTysPlayerInjury(tysPlayerInjury);
    }

    /**
     * 批量删除球员伤病追踪
     * 
     * @param injuryIds 需要删除的球员伤病追踪主键
     * @return 结果
     */
    @Override
    public int deleteTysPlayerInjuryByInjuryIds(Long[] injuryIds)
    {
        return tysPlayerInjuryMapper.deleteTysPlayerInjuryByInjuryIds(injuryIds);
    }

    /**
     * 删除球员伤病追踪信息
     * 
     * @param injuryId 球员伤病追踪主键
     * @return 结果
     */
    @Override
    public int deleteTysPlayerInjuryByInjuryId(Long injuryId)
    {
        return tysPlayerInjuryMapper.deleteTysPlayerInjuryByInjuryId(injuryId);
    }
}
