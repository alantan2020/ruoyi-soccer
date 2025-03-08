package com.ruoyi.soccer.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.soccer.mapper.TysPlayerMapper;
import com.ruoyi.soccer.domain.TysPlayer;
import com.ruoyi.soccer.service.ITysPlayerService;

/**
 * 球员管理Service业务层处理
 * 
 * @author AlanTan
 * @date 2025-03-09
 */
@Service
public class TysPlayerServiceImpl implements ITysPlayerService 
{
    @Autowired
    private TysPlayerMapper tysPlayerMapper;

    /**
     * 查询球员管理
     * 
     * @param playerId 球员管理主键
     * @return 球员管理
     */
    @Override
    public TysPlayer selectTysPlayerByPlayerId(Long playerId)
    {
        return tysPlayerMapper.selectTysPlayerByPlayerId(playerId);
    }

    /**
     * 查询球员管理列表
     * 
     * @param tysPlayer 球员管理
     * @return 球员管理
     */
    @Override
    public List<TysPlayer> selectTysPlayerList(TysPlayer tysPlayer)
    {
        return tysPlayerMapper.selectTysPlayerList(tysPlayer);
    }

    /**
     * 新增球员管理
     * 
     * @param tysPlayer 球员管理
     * @return 结果
     */
    @Override
    public int insertTysPlayer(TysPlayer tysPlayer)
    {
        tysPlayer.setCreateTime(DateUtils.getNowDate());
        return tysPlayerMapper.insertTysPlayer(tysPlayer);
    }

    /**
     * 修改球员管理
     * 
     * @param tysPlayer 球员管理
     * @return 结果
     */
    @Override
    public int updateTysPlayer(TysPlayer tysPlayer)
    {
        tysPlayer.setUpdateTime(DateUtils.getNowDate());
        return tysPlayerMapper.updateTysPlayer(tysPlayer);
    }

    /**
     * 批量删除球员管理
     * 
     * @param playerIds 需要删除的球员管理主键
     * @return 结果
     */
    @Override
    public int deleteTysPlayerByPlayerIds(Long[] playerIds)
    {
        return tysPlayerMapper.deleteTysPlayerByPlayerIds(playerIds);
    }

    /**
     * 删除球员管理信息
     * 
     * @param playerId 球员管理主键
     * @return 结果
     */
    @Override
    public int deleteTysPlayerByPlayerId(Long playerId)
    {
        return tysPlayerMapper.deleteTysPlayerByPlayerId(playerId);
    }
}
