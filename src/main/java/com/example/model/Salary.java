package com.example.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(callSuper = false)
public class Salary extends BaseModel {

    private Integer id;
    private String month;
    private double basic;
    private double allowance;
    private double reward;
    private double insurance;
    private double gongJiJin;
    private double money;
    private int userId;
    private User user;
}