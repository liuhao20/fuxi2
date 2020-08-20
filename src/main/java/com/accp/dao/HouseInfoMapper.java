package com.accp.dao;

import com.accp.pojo.HouseInfo;
import com.accp.pojo.HouseType;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface HouseInfoMapper {
    /**
     * 查询所有房屋信息
     */    //查询户型 跟分页
           List<HouseInfo> getHouseInfo(@Param("start") Integer start, @Param("end") Integer end);
           //总条数
           int findCount();
           //加载户型
           List<HouseType> typeName();
           //添加房屋
           int insert(HouseInfo houseInfo);
           //根据户型typeId查询
           List<HouseInfo>findByTypeId(@Param("typeId") Integer typeId);
}
