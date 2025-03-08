package com.ruoyi.soccer.mapper;

import java.util.List;
import com.ruoyi.soccer.domain.TysPlayer;

/**
 * 球员管理Mapper接口
 * 
 * @author AlanTan
 * @date 2025-03-09
 */
public interface TysPlayerMapper 
{
    /**
     * 查询球员管理
     * 
     * @param playerId 球员管理主键
     * @return 球员管理
     */
    public TysPlayer selectTysPlayerByPlayerId(Long playerId);

    /**
     * 查询球员管理列表
     * 
     * @param tysPlayer 球员管理
     * @return 球员管理集合
     */
    public List<TysPlayer> selectTysPlayerList(TysPlayer tysPlayer);

    /**
     * 新增球员管理
     * 
     * @param tysPlayer 球员管理
     * @return 结果
     */
    public int insertTysPlayer(TysPlayer tysPlayer);

    /**
     * 修改球员管理
     * 
     * @param tysPlayer 球员管理
     * @return 结果
     */
    public int updateTysPlayer(TysPlayer tysPlayer);

    /**
     * 删除球员管理
     * 
     * @param playerId 球员管理主键
     * @return 结果
     */
    public int deleteTysPlayerByPlayerId(Long playerId);

    /**
     * 批量删除球员管理
     * 
     * @param playerIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTysPlayerByPlayerIds(Long[] playerIds);
}
