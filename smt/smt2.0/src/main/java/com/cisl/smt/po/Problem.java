package com.cisl.smt.po;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Data
@Table(name = "t_problem")
public class Problem {

    @Id
    @GeneratedValue
    private Long prob_id;

    private Long options_id;
    private Long answer_id;   //why not?
    private String prob_text;
    private String prob_attr;
    private String prob_level;
    private String prob_diff;

    private Long lesson_id;
    private Long grammar_id;
    private Long point_id;
    private Long blank_num;

    //add
    private String image_url;
    private String audio_url;
    private int resource_flag;  //来确定以什么形式展示资源（image，audio）

    public Problem() {};

    public Problem(String prob_text, String prob_attr, String prob_level, String prob_diff, Long lesson_id, Long grammar_id, Long point_id, Long blank_num) {
        this.prob_text = prob_text;
        this.prob_attr = prob_attr;
        this.prob_level = prob_level;
        this.prob_diff = prob_diff;
        this.lesson_id = lesson_id;
        this.grammar_id = grammar_id;
        this.point_id = point_id;
        this.blank_num = blank_num;
    }
}
