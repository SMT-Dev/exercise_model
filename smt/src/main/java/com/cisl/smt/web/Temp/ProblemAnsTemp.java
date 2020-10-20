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
    private String text;

    public Long getFinish() {
        return finish;
    }

    public void setFinish(Long finish) {
        this.finish = finish;
    }

    public ProblemAnsTemp() {
    }

    public Long getIdx() {
        return idx;
    }

    public void setIdx(Long idx) {
        this.idx = idx;
    }

    public String getChoice() {
        return choice;
    }

    public void setChoice(String choice) {
        this.choice = choice;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    @Override
    public String toString() {
        return "ProblemAnsTemp{" +
                "idx=" + idx +
                ", finish=" + finish +
                ", choice='" + choice + '\'' +
                ", text='" + text + '\'' +
                '}';
    }
}
