package com.cisl.smt.po;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Data
@Table(name = "t_answer")
public class Answer {

    @Id
    @GeneratedValue
    private Long answer_id;

    private String answer_text;
    private String analysis_text;

    public Answer() {};

    public Answer(String answer_text, String analysis_text) {
        this.answer_text = answer_text;
        this.analysis_text = analysis_text;
    }
}
