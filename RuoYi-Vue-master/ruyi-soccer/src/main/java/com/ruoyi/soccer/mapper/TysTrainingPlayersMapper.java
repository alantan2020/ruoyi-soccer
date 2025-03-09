package com.ruoyi.soccer.mapper;

import java.util.List;
import com.ruoyi.soccer.domain.TysTrainingPlayers;

/**
 * 训练参与人员Mapper接口
 * 
 * @author ruoyi
 * @date 2025-03-10
 */
public interface TysTrainingPlayersMapper 
{
    /**
     * 查询训练参与人员
     * 
     * @param id 训练参与人员主键
     * @return 训练参与人员
     */
    public TysTrainingPlayers selectTysTrainingPlayersById(Long id);

    /**
     * 查询训练参与人员列表
     * 
     * @param tysTrainingPlayers 训练参与人员
     * @return 训练参与人员集合
     */
    public List<TysTrainingPlayers> selectTysTrainingPlayersList(TysTrainingPlayers tysTrainingPlayers);

    /**
     * 新增训练参与人员
     * 
     * @param tysTrainingPlayers 训练参与人员
     * @return 结果
     */
    public int insertTysTrainingPlayers(TysTrainingPlayers tysTrainingPlayers);

    /**
     * 修改训练参与人员
     * 
     * @param tysTrainingPlayers 训练参与人员
     * @return 结果
     */
    public int updateTysTrainingPlayers(TysTrainingPlayers tysTrainingPlayers);

    /**
     * 删除训练参与人员
     * 
     * @param id 训练参与人员主键
     * @return 结果
     */
    public int deleteTysTrainingPlayersById(Long id);

    /**
     * 批量删除训练参与人员
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTysTrainingPlayersByIds(Long[] ids);
}
