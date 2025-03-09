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
import com.ruoyi.soccer.domain.TysPositionType;
import com.ruoyi.soccer.service.ITysPositionTypeService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * PositionTyreController
 * 
 * @author AlanTan
 * @date 2025-03-10
 */
@RestController
@RequestMapping("/soccer/positiontyre")
public class TysPositionTypeController extends BaseController
{
    @Autowired
    private ITysPositionTypeService tysPositionTypeService;

    /**
     * 查询PositionTyre列表
     */
    @PreAuthorize("@ss.hasPermi('soccer:positiontyre:list')")
    @GetMapping("/list")
    public TableDataInfo list(TysPositionType tysPositionType)
    {
        startPage();
        List<TysPositionType> list = tysPositionTypeService.selectTysPositionTypeList(tysPositionType);
        return getDataTable(list);
    }

    /**
     * 导出PositionTyre列表
     */
    @PreAuthorize("@ss.hasPermi('soccer:positiontyre:export')")
    @Log(title = "PositionTyre", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, TysPositionType tysPositionType)
    {
        List<TysPositionType> list = tysPositionTypeService.selectTysPositionTypeList(tysPositionType);
        ExcelUtil<TysPositionType> util = new ExcelUtil<TysPositionType>(TysPositionType.class);
        util.exportExcel(response, list, "PositionTyre数据");
    }

    /**
     * 获取PositionTyre详细信息
     */
    @PreAuthorize("@ss.hasPermi('soccer:positiontyre:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(tysPositionTypeService.selectTysPositionTypeById(id));
    }

    /**
     * 新增PositionTyre
     */
    @PreAuthorize("@ss.hasPermi('soccer:positiontyre:add')")
    @Log(title = "PositionTyre", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TysPositionType tysPositionType)
    {
        return toAjax(tysPositionTypeService.insertTysPositionType(tysPositionType));
    }

    /**
     * 修改PositionTyre
     */
    @PreAuthorize("@ss.hasPermi('soccer:positiontyre:edit')")
    @Log(title = "PositionTyre", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TysPositionType tysPositionType)
    {
        return toAjax(tysPositionTypeService.updateTysPositionType(tysPositionType));
    }

    /**
     * 删除PositionTyre
     */
    @PreAuthorize("@ss.hasPermi('soccer:positiontyre:remove')")
    @Log(title = "PositionTyre", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(tysPositionTypeService.deleteTysPositionTypeByIds(ids));
    }
}
