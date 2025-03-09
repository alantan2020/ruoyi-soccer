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
import com.ruoyi.soccer.domain.TysPlayerInjury;
import com.ruoyi.soccer.service.ITysPlayerInjuryService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 球员伤病追踪Controller
 * 
 * @author ruoyi
 * @date 2025-03-10
 */
@RestController
@RequestMapping("/soccer/injury")
public class TysPlayerInjuryController extends BaseController
{
    @Autowired
    private ITysPlayerInjuryService tysPlayerInjuryService;

    /**
     * 查询球员伤病追踪列表
     */
    @PreAuthorize("@ss.hasPermi('soccer:injury:list')")
    @GetMapping("/list")
    public TableDataInfo list(TysPlayerInjury tysPlayerInjury)
    {
        startPage();
        List<TysPlayerInjury> list = tysPlayerInjuryService.selectTysPlayerInjuryList(tysPlayerInjury);
        return getDataTable(list);
    }

    /**
     * 导出球员伤病追踪列表
     */
    @PreAuthorize("@ss.hasPermi('soccer:injury:export')")
    @Log(title = "球员伤病追踪", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, TysPlayerInjury tysPlayerInjury)
    {
        List<TysPlayerInjury> list = tysPlayerInjuryService.selectTysPlayerInjuryList(tysPlayerInjury);
        ExcelUtil<TysPlayerInjury> util = new ExcelUtil<TysPlayerInjury>(TysPlayerInjury.class);
        util.exportExcel(response, list, "球员伤病追踪数据");
    }

    /**
     * 获取球员伤病追踪详细信息
     */
    @PreAuthorize("@ss.hasPermi('soccer:injury:query')")
    @GetMapping(value = "/{injuryId}")
    public AjaxResult getInfo(@PathVariable("injuryId") Long injuryId)
    {
        return success(tysPlayerInjuryService.selectTysPlayerInjuryByInjuryId(injuryId));
    }

    /**
     * 新增球员伤病追踪
     */
    @PreAuthorize("@ss.hasPermi('soccer:injury:add')")
    @Log(title = "球员伤病追踪", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TysPlayerInjury tysPlayerInjury)
    {
        return toAjax(tysPlayerInjuryService.insertTysPlayerInjury(tysPlayerInjury));
    }

    /**
     * 修改球员伤病追踪
     */
    @PreAuthorize("@ss.hasPermi('soccer:injury:edit')")
    @Log(title = "球员伤病追踪", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TysPlayerInjury tysPlayerInjury)
    {
        return toAjax(tysPlayerInjuryService.updateTysPlayerInjury(tysPlayerInjury));
    }

    /**
     * 删除球员伤病追踪
     */
    @PreAuthorize("@ss.hasPermi('soccer:injury:remove')")
    @Log(title = "球员伤病追踪", businessType = BusinessType.DELETE)
	@DeleteMapping("/{injuryIds}")
    public AjaxResult remove(@PathVariable Long[] injuryIds)
    {
        return toAjax(tysPlayerInjuryService.deleteTysPlayerInjuryByInjuryIds(injuryIds));
    }
}
