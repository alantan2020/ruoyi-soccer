package com.ruoyi.soccer.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.soccer.mapper.TysPhysicalDataMapper;
import com.ruoyi.soccer.domain.TysPhysicalData;
import com.ruoyi.soccer.service.ITysPhysicalDataService;

/**
 * 身体数据Service业务层处理
 * 
 * @author AlanTan
 * @date 2025-03-10
 */
@Service
public class TysPhysicalDataServiceImpl implements ITysPhysicalDataService 
{
    @Autowired
    private TysPhysicalDataMapper tysPhysicalDataMapper;

    /**
     * 查询身体数据
     * 
     * @param dataId 身体数据主键
     * @return 身体数据
     */
    @Override
    public TysPhysicalData selectTysPhysicalDataByDataId(Long dataId)
    {
        return tysPhysicalDataMapper.selectTysPhysicalDataByDataId(dataId);
    }

    /**
     * 查询身体数据列表
     * 
     * @param tysPhysicalData 身体数据
     * @return 身体数据
     */
    @Override
    public List<TysPhysicalData> selectTysPhysicalDataList(TysPhysicalData tysPhysicalData)
    {
        return tysPhysicalDataMapper.selectTysPhysicalDataList(tysPhysicalData);
    }

    /**
     * 新增身体数据
     * 
     * @param tysPhysicalData 身体数据
     * @return 结果
     */
    @Override
    public int insertTysPhysicalData(TysPhysicalData tysPhysicalData)
    {
        tysPhysicalData.setCreateTime(DateUtils.getNowDate());
        return tysPhysicalDataMapper.insertTysPhysicalData(tysPhysicalData);
    }

    /**
     * 修改身体数据
     * 
     * @param tysPhysicalData 身体数据
     * @return 结果
     */
    @Override
    public int updateTysPhysicalData(TysPhysicalData tysPhysicalData)
    {
        tysPhysicalData.setUpdateTime(DateUtils.getNowDate());
        return tysPhysicalDataMapper.updateTysPhysicalData(tysPhysicalData);
    }

    /**
     * 批量删除身体数据
     * 
     * @param dataIds 需要删除的身体数据主键
     * @return 结果
     */
    @Override
    public int deleteTysPhysicalDataByDataIds(Long[] dataIds)
    {
        return tysPhysicalDataMapper.deleteTysPhysicalDataByDataIds(dataIds);
    }

    /**
     * 删除身体数据信息
     * 
     * @param dataId 身体数据主键
     * @return 结果
     */
    @Override
    public int deleteTysPhysicalDataByDataId(Long dataId)
    {
        return tysPhysicalDataMapper.deleteTysPhysicalDataByDataId(dataId);
    }
}
