package com.cisl.smt.web.Temp;

public class ProblemAnsTemp {
    /**
     * @description: 做题页面中某题的作答
     * @author: Hopenx
     * @date: 2020.10.19
     */

    private Long idx;
    private Long finish;
    private String choice;
    private String choice_text;
    private String prob_text;
    private String analysis;
    private String ans;
    private String point;

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

    public void setChoice(String choice) {
        this.choice = choice;
    }

    public String getChoice_text() {
        return choice_text;
    }

    public void setChoice_text(String choice_text) {
        this.choice_text = choice_text;
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
                '}';
    }
}
