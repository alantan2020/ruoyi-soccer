package com.ruoyi.soccer.service;

import java.util.List;
import com.ruoyi.soccer.domain.TysPositionType;

/**
 * PositionTyreService接口
 * 
 * @author AlanTan
 * @date 2025-03-10
 */
public interface ITysPositionTypeService 
{
    /**
     * 查询PositionTyre
     * 
     * @param id PositionTyre主键
     * @return PositionTyre
     */
    public TysPositionType selectTysPositionTypeById(Long id);

    /**
     * 查询PositionTyre列表
     * 
     * @param tysPositionType PositionTyre
     * @return PositionTyre集合
     */
    public List<TysPositionType> selectTysPositionTypeList(TysPositionType tysPositionType);

    /**
     * 新增PositionTyre
     * 
     * @param tysPositionType PositionTyre
     * @return 结果
     */
    public int insertTysPositionType(TysPositionType tysPositionType);

    /**
     * 修改PositionTyre
     * 
     * @param tysPositionType PositionTyre
     * @return 结果
     */
    public int updateTysPositionType(TysPositionType tysPositionType);

    /**
     * 批量删除PositionTyre
     * 
     * @param ids 需要删除的PositionTyre主键集合
     * @return 结果
     */
    public int deleteTysPositionTypeByIds(Long[] ids);

    /**
     * 删除PositionTyre信息
     * 
     * @param id PositionTyre主键
     * @return 结果
     */
    public int deleteTysPositionTypeById(Long id);
}
