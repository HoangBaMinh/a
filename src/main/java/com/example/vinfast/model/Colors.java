package com.example.vinfast.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Colors {
    private Integer colorId;
    private String colorName;
    private String hexCode;
    private String rgbCode;
    private String status;

}
