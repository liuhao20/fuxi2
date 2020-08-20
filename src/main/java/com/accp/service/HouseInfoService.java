package com.accp.service;

import com.accp.pojo.HouseInfo;
import com.accp.pojo.HouseType;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface HouseInfoService {
    //查询户型 跟分页
    List<HouseInfo> getHouseInfo(Integer start, Integer end);
    //加载户型
    List<HouseType> typeName();
    //添加房屋
    int insert( HouseInfo houseInfo);
    //房屋总数
    Integer findCount();
    //根据户型typeId查询
    List<HouseInfo>findByTypeId(Integer typeId);
}
