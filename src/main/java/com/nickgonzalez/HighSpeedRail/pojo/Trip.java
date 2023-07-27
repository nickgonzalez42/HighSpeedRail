package com.nickgonzalez.HighSpeedRail.pojo;

import lombok.Data;
import org.springframework.validation.annotation.Validated;

import java.util.ArrayList;
import java.util.List;

@Data
@Validated
public class Trip {
    private List<Integer> trainIds = new ArrayList<Integer>();
    private String customerName;
}
