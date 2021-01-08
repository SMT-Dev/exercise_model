package com.cisl.smt.web.Temp;

import java.util.ArrayList;

public class SheetTemp {
    /**
     * @description: 答题卡数据临时类
     * @author: Hopenx
     * @date: 2020.10.19
     */

    private Long id;   //此处 id 为试卷 id，当前毫秒数
    private ArrayList<ProblemAnsTemp> sheet_list;
    private ArrayList<Long> num_list;
    private Long opt_num;
    private Long txt_num;

    public SheetTemp(){
        this.setSheet_list(new ArrayList<>());
        this.setNum_list(new ArrayList<>());
    };   //还要初始化自己的列表

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
            this.setSheet_list(new ArrayList<>());
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
