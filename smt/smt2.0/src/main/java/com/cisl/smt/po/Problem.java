package com.cisl.smt.po;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "t_problem")
public class Problem {

    @Id
    @GeneratedValue
    private Long prob_id;

    private Long options_id;
    private String prob_text;
    private String prob_attr;
    private String prob_level;
    private String prob_diff;

    private Long lesson_id;
    private Long grammar_id;
    private Long point_id;
    private Long blank_num;

    public Problem() {};

    public Long getOptions_id() { return options_id; }

    public Long getProb_id() {
        return prob_id;
    }

    public String getProb_text() {
        return prob_text;
    }

    public String getProb_attr() {
        return prob_attr;
    }

    public String getProb_level() {
        return prob_level;
    }

    public String getProb_diff() {
        return prob_diff;
    }

    public Long getGrammar_id() {
        return grammar_id;
    }

    public Long getPoint_id() {
        return point_id;
    }

    public Long getLesson_id() { return lesson_id; }

    public Long getBlank_num() {
        return blank_num;
    }

    public void setBlank_num(Long blank_num) {
        this.blank_num = blank_num;
    }

    public void setLesson_id(Long lesson_id) {
        this.lesson_id = lesson_id;
    }

    public void setProb_id(Long prob_id) {
        this.prob_id = prob_id;
    }

    public void setProb_text(String prob_text) {
        this.prob_text = prob_text;
    }

    public void setProb_attr(String prob_attr) {
        this.prob_attr = prob_attr;
    }

    public void setProb_level(String prob_level) {
        this.prob_level = prob_level;
    }

    public void setProb_diff(String prob_diff) {
        this.prob_diff = prob_diff;
    }

    public void setGrammar_id(Long grammar_id) {
        this.grammar_id = grammar_id;
    }

    public void setPoint_id(Long point_id) {
        this.point_id = point_id;
    }

    public void setOptions_id(Long options_id) { this.options_id = options_id; }

    @Override
    public String toString() {
        return "Problem{" +
                "prob_id=" + prob_id +
                ", options_id=" + options_id +
                ", prob_text='" + prob_text + '\'' +
                ", prob_attr='" + prob_attr + '\'' +
                ", prob_level='" + prob_level + '\'' +
                ", prob_diff='" + prob_diff + '\'' +
                ", lesson_id=" + lesson_id +
                ", grammar_id=" + grammar_id +
                ", point_id=" + point_id +
                ", blank_num=" + blank_num +
                '}';
    }
}
