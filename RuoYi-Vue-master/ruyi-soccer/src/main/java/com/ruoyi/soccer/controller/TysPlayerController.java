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
import com.ruoyi.soccer.domain.TysPlayer;
import com.ruoyi.soccer.service.ITysPlayerService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 球员管理Controller
 * 
 * @author AlanTan
 * @date 2025-03-09
 */
@RestController
@RequestMapping("/soccer/player")
public class TysPlayerController extends BaseController
{
    @Autowired
    private ITysPlayerService tysPlayerService;

    /**
     * 查询球员管理列表
     */
    @PreAuthorize("@ss.hasPermi('soccer:player:list')")
    @GetMapping("/list")
    public TableDataInfo list(TysPlayer tysPlayer)
    {
        startPage();
        List<TysPlayer> list = tysPlayerService.selectTysPlayerList(tysPlayer);
        return getDataTable(list);
    }

    /**
     * 导出球员管理列表
     */
    @PreAuthorize("@ss.hasPermi('soccer:player:export')")
    @Log(title = "球员管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, TysPlayer tysPlayer)
    {
        List<TysPlayer> list = tysPlayerService.selectTysPlayerList(tysPlayer);
        ExcelUtil<TysPlayer> util = new ExcelUtil<TysPlayer>(TysPlayer.class);
        util.exportExcel(response, list, "球员管理数据");
    }

    /**
     * 获取球员管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('soccer:player:query')")
    @GetMapping(value = "/{playerId}")
    public AjaxResult getInfo(@PathVariable("playerId") Long playerId)
    {
        return success(tysPlayerService.selectTysPlayerByPlayerId(playerId));
    }

    /**
     * 新增球员管理
     */
    @PreAuthorize("@ss.hasPermi('soccer:player:add')")
    @Log(title = "球员管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TysPlayer tysPlayer)
    {
        return toAjax(tysPlayerService.insertTysPlayer(tysPlayer));
    }

    /**
     * 修改球员管理
     */
    @PreAuthorize("@ss.hasPermi('soccer:player:edit')")
    @Log(title = "球员管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TysPlayer tysPlayer)
    {
        return toAjax(tysPlayerService.updateTysPlayer(tysPlayer));
    }

    /**
     * 删除球员管理
     */
    @PreAuthorize("@ss.hasPermi('soccer:player:remove')")
    @Log(title = "球员管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{playerIds}")
    public AjaxResult remove(@PathVariable Long[] playerIds)
    {
        return toAjax(tysPlayerService.deleteTysPlayerByPlayerIds(playerIds));
    }
}
