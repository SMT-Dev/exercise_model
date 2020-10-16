package com.cisl.smt.web;

import java.util.ArrayList;

public class SheetTemporal {
    private ArrayList<ProblemTemporal> sheet_list;
    private static SheetTemporal instance = null;

    private SheetTemporal(){}   // 单例模式，外部不能new

    public static SheetTemporal getInstance() {
        if(instance == null) {
            instance = new SheetTemporal();
            instance.setSheet_list(new ArrayList<>());
        }
        return instance;
    }

    public ArrayList<ProblemTemporal> getSheet_list() {
        return sheet_list;
    }

    public void setSheet_list(ArrayList<ProblemTemporal> sheet_list) {
        this.sheet_list = sheet_list;
    }

    public void addSheet_list(ProblemTemporal pt) {
        if(this.sheet_list == null){
            instance.setSheet_list(new ArrayList<>());
        }
        this.sheet_list.add(pt);
    }

    public void clearSheet_list() {
        this.sheet_list.clear();
    }

    @Override
    public String toString() {
        return "SheetTemporal{" +
                ", sheet_list=" + sheet_list +
                '}';
    }
}
