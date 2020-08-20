package com.accp.controller;

import com.accp.pojo.HouseInfo;
import com.accp.pojo.HouseType;
import com.accp.service.HouseInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import java.util.Date;
import java.util.List;

@Controller
@Component
public class HouseInfoController {
    @Autowired
    HouseInfoService houseInfoService;
    @RequestMapping("get")
    //查询户型 跟分页
    public String gethouseinfo(@RequestParam(value="pageCurrent",defaultValue="1",required=false)Integer pageCurrent,Model model){
        Integer end = 5;
        Integer start = (pageCurrent - 1) * end;
        //共几页
        //计算：2页  10/5 = 2 11/5=3
        Integer total = 1;
        Integer count = houseInfoService.findCount();
        if(count % 5 == 0){
            //正页数
            total = count / end;
        }else{
            //有余数
            total = count / 5 + 1;
        }
        model.addAttribute("total", total);
    List<HouseInfo> list=houseInfoService.getHouseInfo(start,end);
    model.addAttribute("pageCurrent",pageCurrent);
    model.addAttribute("list",list);
    return "index";
    }
    //加载户型
    @RequestMapping("get3")
    public String gethouseinfo3(Model model){
       List<HouseType> list =houseInfoService.typeName();
        model.addAttribute("list",list);
        return "index2";
    }
    //添加房屋
    @RequestMapping("insert")
    public String gethouseinfo4(HouseInfo houseInfo,Model model){
        houseInfo.setPublishDate(new Date());
        //houseInfo.setHouseDesc();
        int isSccess= houseInfoService.insert(houseInfo);
        model.addAttribute("code",isSccess);
        return "index";
    }
    //根据户型typeId查询
    @RequestMapping("byid")
    public String houseTypes(@RequestParam("typeId") Integer typeId, Model model){
        List<HouseInfo> byTypeId = houseInfoService.findByTypeId(typeId);
        model.addAttribute("list",byTypeId);
        return "index";
    }
}
