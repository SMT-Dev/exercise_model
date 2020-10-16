package com.cisl.smt.web;

import com.sun.org.apache.xpath.internal.operations.Bool;

public class ProblemTemporal {
    private Integer idx;
    private Integer finish;
    private String choice;
    private String text;

    public Integer getFinish() {
        return finish;
    }

    public void setFinish(Integer finish) {
        this.finish = finish;
    }

    public ProblemTemporal() {
    }

    public Integer getIdx() {
        return idx;
    }

    public void setIdx(Integer idx) {
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
        return "ProblemTemporal{" +
                "idx=" + idx +
                ", finish=" + finish +
                ", choice='" + choice + '\'' +
                ", text='" + text + '\'' +
                '}';
    }
}
