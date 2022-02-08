package com.cisl.smt.web.Temp;

import lombok.Data;

import java.util.ArrayList;
@Data
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
    //add begin
    private int opt_choice_num;
    private int opt_tingyinxuanwen_num;
    private int opt_kantuxuanyin_num;
    private int opt_tingyinxuanci_num;
    private int opt_panduanzhengwu_num;

    //add end
    private String exer_level;
    private String start_time;
    private String end_time;
    private boolean evaluated;

    public SheetTemp(){
        ArrayList<ProblemAnsTemp> empty1 = new ArrayList<>();
        ArrayList<Long> empty2 = new ArrayList<>();
        this.setSheet_list(empty1);
        this.setNum_list(empty2);
        this.evaluated = false;
    };   //还要初始化自己的列表


    public void addSheet_list(ProblemAnsTemp pt) {
        if(this.sheet_list == null){
            ArrayList<ProblemAnsTemp> empty1 = new ArrayList<>();
            this.setSheet_list(empty1);
        }
        this.sheet_list.add(pt);
    }

    public void clearSheet_list() {
        this.sheet_list.clear();
        this.num_list.clear();
    }


}
