package com.ruoyi.soccer.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.soccer.mapper.TysSubPositionMapper;
import com.ruoyi.soccer.domain.TysSubPosition;
import com.ruoyi.soccer.service.ITysSubPositionService;

/**
 * SubPositionService业务层处理
 * 
 * @author ruoyi
 * @date 2025-03-10
 */
@Service
public class TysSubPositionServiceImpl implements ITysSubPositionService 
{
    @Autowired
    private TysSubPositionMapper tysSubPositionMapper;

    /**
     * 查询SubPosition
     * 
     * @param id SubPosition主键
     * @return SubPosition
     */
    @Override
    public TysSubPosition selectTysSubPositionById(Long id)
    {
        return tysSubPositionMapper.selectTysSubPositionById(id);
    }

    /**
     * 查询SubPosition列表
     * 
     * @param tysSubPosition SubPosition
     * @return SubPosition
     */
    @Override
    public List<TysSubPosition> selectTysSubPositionList(TysSubPosition tysSubPosition)
    {
        return tysSubPositionMapper.selectTysSubPositionList(tysSubPosition);
    }

    /**
     * 新增SubPosition
     * 
     * @param tysSubPosition SubPosition
     * @return 结果
     */
    @Override
    public int insertTysSubPosition(TysSubPosition tysSubPosition)
    {
        return tysSubPositionMapper.insertTysSubPosition(tysSubPosition);
    }

    /**
     * 修改SubPosition
     * 
     * @param tysSubPosition SubPosition
     * @return 结果
     */
    @Override
    public int updateTysSubPosition(TysSubPosition tysSubPosition)
    {
        return tysSubPositionMapper.updateTysSubPosition(tysSubPosition);
    }

    /**
     * 批量删除SubPosition
     * 
     * @param ids 需要删除的SubPosition主键
     * @return 结果
     */
    @Override
    public int deleteTysSubPositionByIds(Long[] ids)
    {
        return tysSubPositionMapper.deleteTysSubPositionByIds(ids);
    }

    /**
     * 删除SubPosition信息
     * 
     * @param id SubPosition主键
     * @return 结果
     */
    @Override
    public int deleteTysSubPositionById(Long id)
    {
        return tysSubPositionMapper.deleteTysSubPositionById(id);
    }
}
