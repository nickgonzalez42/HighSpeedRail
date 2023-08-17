package com.nickgonzalez.HighSpeedRail.pojo;

import com.nickgonzalez.HighSpeedRail.annotations.UniqueRouteValidation;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.Data;
import org.springframework.validation.annotation.Validated;

import java.util.ArrayList;
import java.util.List;

@Data
@Validated
public class Trip {
    @UniqueRouteValidation
    private List<Integer> trainIds = new ArrayList<Integer>();
    @NotNull
    @Size(min=2, max=30)
    private String customerName;
}
