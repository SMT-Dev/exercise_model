package com.cisl.smt.web.Temp;

public class ProblemAnsTemp {
    /**
     * @description: 做题页面中某题的作答
     * @author: Hopenx
     * @date: 2020.10.19
     */

    //TODO 把判断正误的逻辑写在后台，而非前端

    private Long idx;
    private Long finish;
    private String choice;
    private String choice_text;
    private String prob_text;
    private String analysis;
    private String ans;
    private String point;
    private String type;   // 新增了一个题型变量
    private int eval_res; // 本题做对与做错

    public Long getIdx() {
        return idx;
    }

    public void setIdx(Long idx) {
        this.idx = idx;
    }

    public Long getFinish() {
        return finish;
    }

    public void setFinish(Long finish) {
        this.finish = finish;
    }

    public String getChoice() {
        return choice;
    }

    public void setChoice(String choice) {  // 设置选项的时候就判断正误
        this.choice = choice;
        if (this.type.equals("opt")) {
            if (this.choice.toLowerCase().equals(this.ans.toLowerCase()))
                this.setEval_res(1);
            else this.setEval_res(0);
        }
    }

    public String getChoice_text() {
        return choice_text;
    }

    public void setChoice_text(String choice_text) {  // 设置选项的时候就判断正误
        this.choice_text = choice_text;
        if (this.type.equals("txt")) {
            if (this.choice_text.trim().equals(this.ans.trim()))
                this.setEval_res(1);
            else this.setEval_res(0);
        }
    }

    public String getProb_text() {
        return prob_text;
    }

    public void setProb_text(String prob_text) {
        this.prob_text = prob_text;
    }

    public String getAnalysis() {
        return analysis;
    }

    public void setAnalysis(String analysis) {
        this.analysis = analysis;
    }

    public String getAns() {
        return ans;
    }

    public void setAns(String ans) {
        this.ans = ans;
    }

    public String getPoint() {
        return point;
    }

    public void setPoint(String point) {
        this.point = point;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getEval_res() {
        return eval_res;
    }

    public void setEval_res(int eval_res) {
        this.eval_res = eval_res;
    }

    @Override
    public String toString() {
        return "ProblemAnsTemp{" +
                "idx=" + idx +
                ", finish=" + finish +
                ", choice='" + choice + '\'' +
                ", choice_text='" + choice_text + '\'' +
                ", prob_text='" + prob_text + '\'' +
                ", analysis='" + analysis + '\'' +
                ", ans='" + ans + '\'' +
                ", point='" + point + '\'' +
                ", type='" + type + '\'' +
                ", eval_res=" + eval_res +
                '}';
    }
}
