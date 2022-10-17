package com.cornbreadandbeans.dojosforninjas.repositories;

public enum ChartUnitType {

    PERCENT,

    DOLLAR;

    @Override
    public String toString(){
        return super.toString().toLowerCase();
    }
}
