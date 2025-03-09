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
import com.ruoyi.soccer.domain.TysPhysicalData;
import com.ruoyi.soccer.service.ITysPhysicalDataService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 身体数据Controller
 * 
 * @author AlanTan
 * @date 2025-03-10
 */
@RestController
@RequestMapping("/soccer/physical")
public class TysPhysicalDataController extends BaseController
{
    @Autowired
    private ITysPhysicalDataService tysPhysicalDataService;

    /**
     * 查询身体数据列表
     */
    @PreAuthorize("@ss.hasPermi('soccer:physical:list')")
    @GetMapping("/list")
    public TableDataInfo list(TysPhysicalData tysPhysicalData)
    {
        startPage();
        List<TysPhysicalData> list = tysPhysicalDataService.selectTysPhysicalDataList(tysPhysicalData);
        return getDataTable(list);
    }

    /**
     * 导出身体数据列表
     */
    @PreAuthorize("@ss.hasPermi('soccer:physical:export')")
    @Log(title = "身体数据", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, TysPhysicalData tysPhysicalData)
    {
        List<TysPhysicalData> list = tysPhysicalDataService.selectTysPhysicalDataList(tysPhysicalData);
        ExcelUtil<TysPhysicalData> util = new ExcelUtil<TysPhysicalData>(TysPhysicalData.class);
        util.exportExcel(response, list, "身体数据数据");
    }

    /**
     * 获取身体数据详细信息
     */
    @PreAuthorize("@ss.hasPermi('soccer:physical:query')")
    @GetMapping(value = "/{dataId}")
    public AjaxResult getInfo(@PathVariable("dataId") Long dataId)
    {
        return success(tysPhysicalDataService.selectTysPhysicalDataByDataId(dataId));
    }

    /**
     * 新增身体数据
     */
    @PreAuthorize("@ss.hasPermi('soccer:physical:add')")
    @Log(title = "身体数据", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TysPhysicalData tysPhysicalData)
    {
        return toAjax(tysPhysicalDataService.insertTysPhysicalData(tysPhysicalData));
    }

    /**
     * 修改身体数据
     */
    @PreAuthorize("@ss.hasPermi('soccer:physical:edit')")
    @Log(title = "身体数据", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TysPhysicalData tysPhysicalData)
    {
        return toAjax(tysPhysicalDataService.updateTysPhysicalData(tysPhysicalData));
    }

    /**
     * 删除身体数据
     */
    @PreAuthorize("@ss.hasPermi('soccer:physical:remove')")
    @Log(title = "身体数据", businessType = BusinessType.DELETE)
	@DeleteMapping("/{dataIds}")
    public AjaxResult remove(@PathVariable Long[] dataIds)
    {
        return toAjax(tysPhysicalDataService.deleteTysPhysicalDataByDataIds(dataIds));
    }
}
