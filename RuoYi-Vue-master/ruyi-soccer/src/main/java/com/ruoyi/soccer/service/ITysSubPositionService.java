package com.ruoyi.soccer.service;

import java.util.List;
import com.ruoyi.soccer.domain.TysSubPosition;

/**
 * SubPositionService接口
 * 
 * @author ruoyi
 * @date 2025-03-10
 */
public interface ITysSubPositionService 
{
    /**
     * 查询SubPosition
     * 
     * @param id SubPosition主键
     * @return SubPosition
     */
    public TysSubPosition selectTysSubPositionById(Long id);

    /**
     * 查询SubPosition列表
     * 
     * @param tysSubPosition SubPosition
     * @return SubPosition集合
     */
    public List<TysSubPosition> selectTysSubPositionList(TysSubPosition tysSubPosition);

    /**
     * 新增SubPosition
     * 
     * @param tysSubPosition SubPosition
     * @return 结果
     */
    public int insertTysSubPosition(TysSubPosition tysSubPosition);

    /**
     * 修改SubPosition
     * 
     * @param tysSubPosition SubPosition
     * @return 结果
     */
    public int updateTysSubPosition(TysSubPosition tysSubPosition);

    /**
     * 批量删除SubPosition
     * 
     * @param ids 需要删除的SubPosition主键集合
     * @return 结果
     */
    public int deleteTysSubPositionByIds(Long[] ids);

    /**
     * 删除SubPosition信息
     * 
     * @param id SubPosition主键
     * @return 结果
     */
    public int deleteTysSubPositionById(Long id);
}
