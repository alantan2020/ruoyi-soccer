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
import com.ruoyi.soccer.domain.TysTrainingAttendance;
import com.ruoyi.soccer.service.ITysTrainingAttendanceService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 训练考勤记录Controller
 * 
 * @author AlanTan
 * @date 2025-03-10
 */
@RestController
@RequestMapping("/soccer/attendance")
public class TysTrainingAttendanceController extends BaseController
{
    @Autowired
    private ITysTrainingAttendanceService tysTrainingAttendanceService;

    /**
     * 查询训练考勤记录列表
     */
    @PreAuthorize("@ss.hasPermi('soccer:attendance:list')")
    @GetMapping("/list")
    public TableDataInfo list(TysTrainingAttendance tysTrainingAttendance)
    {
        startPage();
        List<TysTrainingAttendance> list = tysTrainingAttendanceService.selectTysTrainingAttendanceList(tysTrainingAttendance);
        return getDataTable(list);
    }

    /**
     * 导出训练考勤记录列表
     */
    @PreAuthorize("@ss.hasPermi('soccer:attendance:export')")
    @Log(title = "训练考勤记录", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, TysTrainingAttendance tysTrainingAttendance)
    {
        List<TysTrainingAttendance> list = tysTrainingAttendanceService.selectTysTrainingAttendanceList(tysTrainingAttendance);
        ExcelUtil<TysTrainingAttendance> util = new ExcelUtil<TysTrainingAttendance>(TysTrainingAttendance.class);
        util.exportExcel(response, list, "训练考勤记录数据");
    }

    /**
     * 获取训练考勤记录详细信息
     */
    @PreAuthorize("@ss.hasPermi('soccer:attendance:query')")
    @GetMapping(value = "/{attendanceId}")
    public AjaxResult getInfo(@PathVariable("attendanceId") Long attendanceId)
    {
        return success(tysTrainingAttendanceService.selectTysTrainingAttendanceByAttendanceId(attendanceId));
    }

    /**
     * 新增训练考勤记录
     */
    @PreAuthorize("@ss.hasPermi('soccer:attendance:add')")
    @Log(title = "训练考勤记录", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TysTrainingAttendance tysTrainingAttendance)
    {
        return toAjax(tysTrainingAttendanceService.insertTysTrainingAttendance(tysTrainingAttendance));
    }

    /**
     * 修改训练考勤记录
     */
    @PreAuthorize("@ss.hasPermi('soccer:attendance:edit')")
    @Log(title = "训练考勤记录", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TysTrainingAttendance tysTrainingAttendance)
    {
        return toAjax(tysTrainingAttendanceService.updateTysTrainingAttendance(tysTrainingAttendance));
    }

    /**
     * 删除训练考勤记录
     */
    @PreAuthorize("@ss.hasPermi('soccer:attendance:remove')")
    @Log(title = "训练考勤记录", businessType = BusinessType.DELETE)
	@DeleteMapping("/{attendanceIds}")
    public AjaxResult remove(@PathVariable Long[] attendanceIds)
    {
        return toAjax(tysTrainingAttendanceService.deleteTysTrainingAttendanceByAttendanceIds(attendanceIds));
    }
}
