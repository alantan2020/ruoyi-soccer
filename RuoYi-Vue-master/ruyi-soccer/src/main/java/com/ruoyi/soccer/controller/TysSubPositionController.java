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
import com.ruoyi.soccer.domain.TysSubPosition;
import com.ruoyi.soccer.service.ITysSubPositionService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * SubPositionController
 * 
 * @author ruoyi
 * @date 2025-03-10
 */
@RestController
@RequestMapping("/soccer/subposition")
public class TysSubPositionController extends BaseController
{
    @Autowired
    private ITysSubPositionService tysSubPositionService;

    /**
     * 查询SubPosition列表
     */
    @PreAuthorize("@ss.hasPermi('soccer:subposition:list')")
    @GetMapping("/list")
    public TableDataInfo list(TysSubPosition tysSubPosition)
    {
        startPage();
        List<TysSubPosition> list = tysSubPositionService.selectTysSubPositionList(tysSubPosition);
        return getDataTable(list);
    }

    /**
     * 导出SubPosition列表
     */
    @PreAuthorize("@ss.hasPermi('soccer:subposition:export')")
    @Log(title = "SubPosition", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, TysSubPosition tysSubPosition)
    {
        List<TysSubPosition> list = tysSubPositionService.selectTysSubPositionList(tysSubPosition);
        ExcelUtil<TysSubPosition> util = new ExcelUtil<TysSubPosition>(TysSubPosition.class);
        util.exportExcel(response, list, "SubPosition数据");
    }

    /**
     * 获取SubPosition详细信息
     */
    @PreAuthorize("@ss.hasPermi('soccer:subposition:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(tysSubPositionService.selectTysSubPositionById(id));
    }

    /**
     * 新增SubPosition
     */
    @PreAuthorize("@ss.hasPermi('soccer:subposition:add')")
    @Log(title = "SubPosition", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TysSubPosition tysSubPosition)
    {
        return toAjax(tysSubPositionService.insertTysSubPosition(tysSubPosition));
    }

    /**
     * 修改SubPosition
     */
    @PreAuthorize("@ss.hasPermi('soccer:subposition:edit')")
    @Log(title = "SubPosition", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TysSubPosition tysSubPosition)
    {
        return toAjax(tysSubPositionService.updateTysSubPosition(tysSubPosition));
    }

    /**
     * 删除SubPosition
     */
    @PreAuthorize("@ss.hasPermi('soccer:subposition:remove')")
    @Log(title = "SubPosition", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(tysSubPositionService.deleteTysSubPositionByIds(ids));
    }
}
