package com.ruoyi.soccer.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.soccer.domain.TysTrainingPlan;
import com.ruoyi.soccer.service.ITysTrainingPlanService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 训练计划Controller
 * 
 * @author AlanTan
 * @date 2025-03-09
 */
@RestController
@RequestMapping("/soccer/plan")
public class TysTrainingPlanController extends BaseController
{
    @Autowired
    private ITysTrainingPlanService tysTrainingPlanService;

    /**
     * 查询训练计划列表
     */
    @PreAuthorize("@ss.hasPermi('soccer:plan:list')")
    @GetMapping("/list")
    public TableDataInfo list(TysTrainingPlan tysTrainingPlan)
    {
        startPage();
        List<TysTrainingPlan> list = tysTrainingPlanService.selectTysTrainingPlanList(tysTrainingPlan);
        return getDataTable(list);
    }

    /**
     * 导出训练计划列表
     */
    @PreAuthorize("@ss.hasPermi('soccer:plan:export')")
    @Log(title = "训练计划", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, TysTrainingPlan tysTrainingPlan)
    {
        List<TysTrainingPlan> list = tysTrainingPlanService.selectTysTrainingPlanList(tysTrainingPlan);
        ExcelUtil<TysTrainingPlan> util = new ExcelUtil<TysTrainingPlan>(TysTrainingPlan.class);
        util.exportExcel(response, list, "训练计划数据");
    }

    /**
     * 获取训练计划详细信息
     */
    @PreAuthorize("@ss.hasPermi('soccer:plan:query')")
    @GetMapping(value = "/{planId}")
    public AjaxResult getInfo(@PathVariable("planId") Long planId)
    {
        return success(tysTrainingPlanService.selectTysTrainingPlanByPlanId(planId));
    }

    /**
     * 新增训练计划
     */
    @PreAuthorize("@ss.hasPermi('soccer:plan:add')")
    @Log(title = "训练计划", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TysTrainingPlan tysTrainingPlan)
    {
        return toAjax(tysTrainingPlanService.insertTysTrainingPlan(tysTrainingPlan));
    }

    /**
     * 修改训练计划
     */
    @PreAuthorize("@ss.hasPermi('soccer:plan:edit')")
    @Log(title = "训练计划", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TysTrainingPlan tysTrainingPlan)
    {
        return toAjax(tysTrainingPlanService.updateTysTrainingPlan(tysTrainingPlan));
    }

    /**
     * 删除训练计划
     */
    @PreAuthorize("@ss.hasPermi('soccer:plan:remove')")
    @Log(title = "训练计划", businessType = BusinessType.DELETE)
	@DeleteMapping("/{planIds}")
    public AjaxResult remove(@PathVariable Long[] planIds)
    {
        return toAjax(tysTrainingPlanService.deleteTysTrainingPlanByPlanIds(planIds));
    }
}
