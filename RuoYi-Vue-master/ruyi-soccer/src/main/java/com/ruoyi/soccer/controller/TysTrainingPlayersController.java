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
import com.ruoyi.soccer.domain.TysTrainingPlayers;
import com.ruoyi.soccer.service.ITysTrainingPlayersService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 训练参与人员Controller
 * 
 * @author ruoyi
 * @date 2025-03-10
 */
@RestController
@RequestMapping("/soccer/trainingplayers")
public class TysTrainingPlayersController extends BaseController
{
    @Autowired
    private ITysTrainingPlayersService tysTrainingPlayersService;

    /**
     * 查询训练参与人员列表
     */
    @PreAuthorize("@ss.hasPermi('soccer:trainingplayers:list')")
    @GetMapping("/list")
    public TableDataInfo list(TysTrainingPlayers tysTrainingPlayers)
    {
        startPage();
        List<TysTrainingPlayers> list = tysTrainingPlayersService.selectTysTrainingPlayersList(tysTrainingPlayers);
        return getDataTable(list);
    }

    /**
     * 导出训练参与人员列表
     */
    @PreAuthorize("@ss.hasPermi('soccer:trainingplayers:export')")
    @Log(title = "训练参与人员", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, TysTrainingPlayers tysTrainingPlayers)
    {
        List<TysTrainingPlayers> list = tysTrainingPlayersService.selectTysTrainingPlayersList(tysTrainingPlayers);
        ExcelUtil<TysTrainingPlayers> util = new ExcelUtil<TysTrainingPlayers>(TysTrainingPlayers.class);
        util.exportExcel(response, list, "训练参与人员数据");
    }

    /**
     * 获取训练参与人员详细信息
     */
    @PreAuthorize("@ss.hasPermi('soccer:trainingplayers:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(tysTrainingPlayersService.selectTysTrainingPlayersById(id));
    }

    /**
     * 新增训练参与人员
     */
    @PreAuthorize("@ss.hasPermi('soccer:trainingplayers:add')")
    @Log(title = "训练参与人员", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TysTrainingPlayers tysTrainingPlayers)
    {
        return toAjax(tysTrainingPlayersService.insertTysTrainingPlayers(tysTrainingPlayers));
    }

    /**
     * 修改训练参与人员
     */
    @PreAuthorize("@ss.hasPermi('soccer:trainingplayers:edit')")
    @Log(title = "训练参与人员", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TysTrainingPlayers tysTrainingPlayers)
    {
        return toAjax(tysTrainingPlayersService.updateTysTrainingPlayers(tysTrainingPlayers));
    }

    /**
     * 删除训练参与人员
     */
    @PreAuthorize("@ss.hasPermi('soccer:trainingplayers:remove')")
    @Log(title = "训练参与人员", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(tysTrainingPlayersService.deleteTysTrainingPlayersByIds(ids));
    }
}
