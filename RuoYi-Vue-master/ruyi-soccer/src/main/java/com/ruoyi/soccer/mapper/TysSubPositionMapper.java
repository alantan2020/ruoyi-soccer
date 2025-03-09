package com.ruoyi.soccer.mapper;

import java.util.List;
import com.ruoyi.soccer.domain.TysSubPosition;

/**
 * SubPositionMapper接口
 * 
 * @author ruoyi
 * @date 2025-03-10
 */
public interface TysSubPositionMapper 
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
     * 删除SubPosition
     * 
     * @param id SubPosition主键
     * @return 结果
     */
    public int deleteTysSubPositionById(Long id);

    /**
     * 批量删除SubPosition
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTysSubPositionByIds(Long[] ids);
}
