package com.accp.pojo;

import com.alibaba.fastjson.annotation.JSONField;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Data
public class HouseInfo {
    private Integer houseId ;
    private String houseDesc;
    private Integer typeId;
    private Integer monthlyRent;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    @JSONField(format = "yyyy-MM-dd")
    private Date publishDate;
    private String typeName;
}
