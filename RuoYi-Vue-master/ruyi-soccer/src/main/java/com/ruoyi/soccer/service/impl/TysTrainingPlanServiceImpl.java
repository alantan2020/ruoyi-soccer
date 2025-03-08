package com.ruoyi.soccer.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.soccer.mapper.TysTrainingPlanMapper;
import com.ruoyi.soccer.domain.TysTrainingPlan;
import com.ruoyi.soccer.service.ITysTrainingPlanService;

/**
 * 训练计划Service业务层处理
 * 
 * @author AlanTan
 * @date 2025-03-09
 */
@Service
public class TysTrainingPlanServiceImpl implements ITysTrainingPlanService 
{
    @Autowired
    private TysTrainingPlanMapper tysTrainingPlanMapper;

    /**
     * 查询训练计划
     * 
     * @param planId 训练计划主键
     * @return 训练计划
     */
    @Override
    public TysTrainingPlan selectTysTrainingPlanByPlanId(Long planId)
    {
        return tysTrainingPlanMapper.selectTysTrainingPlanByPlanId(planId);
    }

    /**
     * 查询训练计划列表
     * 
     * @param tysTrainingPlan 训练计划
     * @return 训练计划
     */
    @Override
    public List<TysTrainingPlan> selectTysTrainingPlanList(TysTrainingPlan tysTrainingPlan)
    {
        return tysTrainingPlanMapper.selectTysTrainingPlanList(tysTrainingPlan);
    }

    /**
     * 新增训练计划
     * 
     * @param tysTrainingPlan 训练计划
     * @return 结果
     */
    @Override
    public int insertTysTrainingPlan(TysTrainingPlan tysTrainingPlan)
    {
        tysTrainingPlan.setCreateTime(DateUtils.getNowDate());
        return tysTrainingPlanMapper.insertTysTrainingPlan(tysTrainingPlan);
    }

    /**
     * 修改训练计划
     * 
     * @param tysTrainingPlan 训练计划
     * @return 结果
     */
    @Override
    public int updateTysTrainingPlan(TysTrainingPlan tysTrainingPlan)
    {
        tysTrainingPlan.setUpdateTime(DateUtils.getNowDate());
        return tysTrainingPlanMapper.updateTysTrainingPlan(tysTrainingPlan);
    }

    /**
     * 批量删除训练计划
     * 
     * @param planIds 需要删除的训练计划主键
     * @return 结果
     */
    @Override
    public int deleteTysTrainingPlanByPlanIds(Long[] planIds)
    {
        return tysTrainingPlanMapper.deleteTysTrainingPlanByPlanIds(planIds);
    }

    /**
     * 删除训练计划信息
     * 
     * @param planId 训练计划主键
     * @return 结果
     */
    @Override
    public int deleteTysTrainingPlanByPlanId(Long planId)
    {
        return tysTrainingPlanMapper.deleteTysTrainingPlanByPlanId(planId);
    }
}
