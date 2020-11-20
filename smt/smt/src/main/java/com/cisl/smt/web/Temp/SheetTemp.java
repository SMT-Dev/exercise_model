package com.cisl.smt.web.Temp;

import java.util.ArrayList;

public class SheetTemp {
    /**
     * @description: 答题卡数据临时类
     * @author: Hopenx
     * @date: 2020.10.19
     */

    private ArrayList<ProblemAnsTemp> sheet_list;
    private static SheetTemp instance = null;

    private SheetTemp(){}   // 单例模式，外部不能new

    public static SheetTemp getInstance() {
        if(instance == null) {
            instance = new SheetTemp();
            instance.setSheet_list(new ArrayList<>());
        }
        return instance;
    }

    public ArrayList<ProblemAnsTemp> getSheet_list() {
        return sheet_list;
    }

    public void setSheet_list(ArrayList<ProblemAnsTemp> sheet_list) {
        this.sheet_list = sheet_list;
    }

    public void addSheet_list(ProblemAnsTemp pt) {
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
        return "SheetTemp{" +
                ", sheet_list=" + sheet_list +
                '}';
    }
}
