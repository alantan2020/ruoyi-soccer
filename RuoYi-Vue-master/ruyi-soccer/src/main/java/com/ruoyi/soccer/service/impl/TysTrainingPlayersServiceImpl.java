package com.ruoyi.soccer.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.soccer.mapper.TysTrainingPlayersMapper;
import com.ruoyi.soccer.domain.TysTrainingPlayers;
import com.ruoyi.soccer.service.ITysTrainingPlayersService;

/**
 * 训练参与人员Service业务层处理
 * 
 * @author ruoyi
 * @date 2025-03-10
 */
@Service
public class TysTrainingPlayersServiceImpl implements ITysTrainingPlayersService 
{
    @Autowired
    private TysTrainingPlayersMapper tysTrainingPlayersMapper;

    /**
     * 查询训练参与人员
     * 
     * @param id 训练参与人员主键
     * @return 训练参与人员
     */
    @Override
    public TysTrainingPlayers selectTysTrainingPlayersById(Long id)
    {
        return tysTrainingPlayersMapper.selectTysTrainingPlayersById(id);
    }

    /**
     * 查询训练参与人员列表
     * 
     * @param tysTrainingPlayers 训练参与人员
     * @return 训练参与人员
     */
    @Override
    public List<TysTrainingPlayers> selectTysTrainingPlayersList(TysTrainingPlayers tysTrainingPlayers)
    {
        return tysTrainingPlayersMapper.selectTysTrainingPlayersList(tysTrainingPlayers);
    }

    /**
     * 新增训练参与人员
     * 
     * @param tysTrainingPlayers 训练参与人员
     * @return 结果
     */
    @Override
    public int insertTysTrainingPlayers(TysTrainingPlayers tysTrainingPlayers)
    {
        return tysTrainingPlayersMapper.insertTysTrainingPlayers(tysTrainingPlayers);
    }

    /**
     * 修改训练参与人员
     * 
     * @param tysTrainingPlayers 训练参与人员
     * @return 结果
     */
    @Override
    public int updateTysTrainingPlayers(TysTrainingPlayers tysTrainingPlayers)
    {
        return tysTrainingPlayersMapper.updateTysTrainingPlayers(tysTrainingPlayers);
    }

    /**
     * 批量删除训练参与人员
     * 
     * @param ids 需要删除的训练参与人员主键
     * @return 结果
     */
    @Override
    public int deleteTysTrainingPlayersByIds(Long[] ids)
    {
        return tysTrainingPlayersMapper.deleteTysTrainingPlayersByIds(ids);
    }

    /**
     * 删除训练参与人员信息
     * 
     * @param id 训练参与人员主键
     * @return 结果
     */
    @Override
    public int deleteTysTrainingPlayersById(Long id)
    {
        return tysTrainingPlayersMapper.deleteTysTrainingPlayersById(id);
    }
}
