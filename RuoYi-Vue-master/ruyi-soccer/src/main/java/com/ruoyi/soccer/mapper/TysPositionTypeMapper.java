package com.ruoyi.soccer.mapper;

import java.util.List;
import com.ruoyi.soccer.domain.TysPositionType;

/**
 * PositionTyreMapper接口
 * 
 * @author AlanTan
 * @date 2025-03-10
 */
public interface TysPositionTypeMapper 
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
     * 删除PositionTyre
     * 
     * @param id PositionTyre主键
     * @return 结果
     */
    public int deleteTysPositionTypeById(Long id);

    /**
     * 批量删除PositionTyre
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTysPositionTypeByIds(Long[] ids);
}
