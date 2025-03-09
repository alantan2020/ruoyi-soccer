package com.ruoyi.soccer.service;

import java.util.List;
import com.ruoyi.soccer.domain.TysPhysicalData;

/**
 * 身体数据Service接口
 * 
 * @author AlanTan
 * @date 2025-03-10
 */
public interface ITysPhysicalDataService 
{
    /**
     * 查询身体数据
     * 
     * @param dataId 身体数据主键
     * @return 身体数据
     */
    public TysPhysicalData selectTysPhysicalDataByDataId(Long dataId);

    /**
     * 查询身体数据列表
     * 
     * @param tysPhysicalData 身体数据
     * @return 身体数据集合
     */
    public List<TysPhysicalData> selectTysPhysicalDataList(TysPhysicalData tysPhysicalData);

    /**
     * 新增身体数据
     * 
     * @param tysPhysicalData 身体数据
     * @return 结果
     */
    public int insertTysPhysicalData(TysPhysicalData tysPhysicalData);

    /**
     * 修改身体数据
     * 
     * @param tysPhysicalData 身体数据
     * @return 结果
     */
    public int updateTysPhysicalData(TysPhysicalData tysPhysicalData);

    /**
     * 批量删除身体数据
     * 
     * @param dataIds 需要删除的身体数据主键集合
     * @return 结果
     */
    public int deleteTysPhysicalDataByDataIds(Long[] dataIds);

    /**
     * 删除身体数据信息
     * 
     * @param dataId 身体数据主键
     * @return 结果
     */
    public int deleteTysPhysicalDataByDataId(Long dataId);
}
