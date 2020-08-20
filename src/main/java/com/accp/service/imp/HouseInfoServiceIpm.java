package com.accp.service.imp;

import com.accp.dao.HouseInfoMapper;
import com.accp.pojo.HouseInfo;
import com.accp.pojo.HouseType;
import com.accp.service.HouseInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class HouseInfoServiceIpm implements HouseInfoService {
    @Autowired
    HouseInfoMapper houseInfoMapper;
    //查询户型 跟分页
    @Override
    public List<HouseInfo> getHouseInfo(Integer start, Integer end) {
         return houseInfoMapper.getHouseInfo(start,end);
    }
    //加载户型
    @Override
    public List<HouseType> typeName() {
        return houseInfoMapper.typeName();
    }
    //添加房屋
    @Override
    public int insert(HouseInfo houseInfo) {
        return houseInfoMapper.insert(houseInfo);
    }
    //房屋总数
    @Override
    public Integer findCount() {
        return houseInfoMapper.findCount();
    }
    //根据户型typeId查询
    @Override
    public List<HouseInfo> findByTypeId(Integer typeId) {
        return houseInfoMapper.findByTypeId(typeId);
    }

}
