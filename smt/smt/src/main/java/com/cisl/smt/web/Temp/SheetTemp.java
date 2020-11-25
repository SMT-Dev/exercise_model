package com.cisl.smt.web.Temp;

import java.util.ArrayList;

public class SheetTemp {
    /**
     * @description: 答题卡数据临时类
     * @author: Hopenx
     * @date: 2020.10.19
     */

    private Long id;
    private ArrayList<ProblemAnsTemp> sheet_list;
    private ArrayList<Long> num_list;
    private Long opt_num;
    private Long txt_num;
    private static SheetTemp instance = null;

    private SheetTemp(){}   // 单例模式，外部不能new

    public static SheetTemp getInstance() {
        if(instance == null) {
            instance = new SheetTemp();
            instance.setSheet_list(new ArrayList<>());
            instance.setNum_list(new ArrayList<>());
        }
        return instance;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public ArrayList<ProblemAnsTemp> getSheet_list() {
        return sheet_list;
    }

    public void setSheet_list(ArrayList<ProblemAnsTemp> sheet_list) {
        this.sheet_list = sheet_list;
    }

    public Long getOpt_num() {
        return opt_num;
    }

    public void setOpt_num(Long opt_num) {
        this.opt_num = opt_num;
    }

    public Long getTxt_num() {
        return txt_num;
    }

    public void setTxt_num(Long txt_num) {
        this.txt_num = txt_num;
    }

    public ArrayList<Long> getNum_list() {
        return num_list;
    }

    public void setNum_list(ArrayList<Long> num_list) {
        this.num_list = num_list;
    }

    public void addSheet_list(ProblemAnsTemp pt) {
        if(this.sheet_list == null){
            instance.setSheet_list(new ArrayList<>());
        }
        this.sheet_list.add(pt);
    }

    public void clearSheet_list() {
        this.sheet_list.clear();
        this.num_list.clear();
    }

    @Override
    public String toString() {
        return "SheetTemp{" +
                "id=" + id +
                ", sheet_list=" + sheet_list +
                ", num_list=" + num_list +
                ", opt_num=" + opt_num +
                ", txt_num=" + txt_num +
                '}';
    }
}
