package com.ruoyi.soccer.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.soccer.mapper.TysPositionTypeMapper;
import com.ruoyi.soccer.domain.TysPositionType;
import com.ruoyi.soccer.service.ITysPositionTypeService;

/**
 * PositionTyreService业务层处理
 * 
 * @author AlanTan
 * @date 2025-03-10
 */
@Service
public class TysPositionTypeServiceImpl implements ITysPositionTypeService 
{
    @Autowired
    private TysPositionTypeMapper tysPositionTypeMapper;

    /**
     * 查询PositionTyre
     * 
     * @param id PositionTyre主键
     * @return PositionTyre
     */
    @Override
    public TysPositionType selectTysPositionTypeById(Long id)
    {
        return tysPositionTypeMapper.selectTysPositionTypeById(id);
    }

    /**
     * 查询PositionTyre列表
     * 
     * @param tysPositionType PositionTyre
     * @return PositionTyre
     */
    @Override
    public List<TysPositionType> selectTysPositionTypeList(TysPositionType tysPositionType)
    {
        return tysPositionTypeMapper.selectTysPositionTypeList(tysPositionType);
    }

    /**
     * 新增PositionTyre
     * 
     * @param tysPositionType PositionTyre
     * @return 结果
     */
    @Override
    public int insertTysPositionType(TysPositionType tysPositionType)
    {
        return tysPositionTypeMapper.insertTysPositionType(tysPositionType);
    }

    /**
     * 修改PositionTyre
     * 
     * @param tysPositionType PositionTyre
     * @return 结果
     */
    @Override
    public int updateTysPositionType(TysPositionType tysPositionType)
    {
        return tysPositionTypeMapper.updateTysPositionType(tysPositionType);
    }

    /**
     * 批量删除PositionTyre
     * 
     * @param ids 需要删除的PositionTyre主键
     * @return 结果
     */
    @Override
    public int deleteTysPositionTypeByIds(Long[] ids)
    {
        return tysPositionTypeMapper.deleteTysPositionTypeByIds(ids);
    }

    /**
     * 删除PositionTyre信息
     * 
     * @param id PositionTyre主键
     * @return 结果
     */
    @Override
    public int deleteTysPositionTypeById(Long id)
    {
        return tysPositionTypeMapper.deleteTysPositionTypeById(id);
    }
}
