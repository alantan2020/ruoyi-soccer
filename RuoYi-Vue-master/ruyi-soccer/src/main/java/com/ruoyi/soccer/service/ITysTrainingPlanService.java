package com.ruoyi.soccer.service;

import java.util.List;
import com.ruoyi.soccer.domain.TysTrainingPlan;

/**
 * 训练计划Service接口
 * 
 * @author AlanTan
 * @date 2025-03-09
 */
public interface ITysTrainingPlanService 
{
    /**
     * 查询训练计划
     * 
     * @param planId 训练计划主键
     * @return 训练计划
     */
    public TysTrainingPlan selectTysTrainingPlanByPlanId(Long planId);

    /**
     * 查询训练计划列表
     * 
     * @param tysTrainingPlan 训练计划
     * @return 训练计划集合
     */
    public List<TysTrainingPlan> selectTysTrainingPlanList(TysTrainingPlan tysTrainingPlan);

    /**
     * 新增训练计划
     * 
     * @param tysTrainingPlan 训练计划
     * @return 结果
     */
    public int insertTysTrainingPlan(TysTrainingPlan tysTrainingPlan);

    /**
     * 修改训练计划
     * 
     * @param tysTrainingPlan 训练计划
     * @return 结果
     */
    public int updateTysTrainingPlan(TysTrainingPlan tysTrainingPlan);

    /**
     * 批量删除训练计划
     * 
     * @param planIds 需要删除的训练计划主键集合
     * @return 结果
     */
    public int deleteTysTrainingPlanByPlanIds(Long[] planIds);

    /**
     * 删除训练计划信息
     * 
     * @param planId 训练计划主键
     * @return 结果
     */
    public int deleteTysTrainingPlanByPlanId(Long planId);
}
