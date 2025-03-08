package com.ruoyi.soccer.mapper;

import java.util.List;
import com.ruoyi.soccer.domain.TysTrainingPlan;

/**
 * 训练计划Mapper接口
 * 
 * @author AlanTan
 * @date 2025-03-09
 */
public interface TysTrainingPlanMapper 
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
     * 删除训练计划
     * 
     * @param planId 训练计划主键
     * @return 结果
     */
    public int deleteTysTrainingPlanByPlanId(Long planId);

    /**
     * 批量删除训练计划
     * 
     * @param planIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTysTrainingPlanByPlanIds(Long[] planIds);
}
