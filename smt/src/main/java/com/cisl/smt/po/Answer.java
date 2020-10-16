package com.cisl.smt.po;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "t_answer")
public class Answer {

    @Id
    @GeneratedValue
    private Long answer_id;

    private Long prob_id;
    private String answer_text;
    private String analysis_text;

    public Answer() {};

    public Long getAnswer_id() {
        return answer_id;
    }

    public Long getProb_id() {
        return prob_id;
    }

    public String getAnswer_text() {
        return answer_text;
    }

    public String getAnalysis_text() {
        return analysis_text;
    }

    public void setAnswer_id(Long answer_id) {
        this.answer_id = answer_id;
    }

    public void setProb_id(Long prob_id) {
        this.prob_id = prob_id;
    }

    public void setAnswer_text(String answer_text) {
        this.answer_text = answer_text;
    }

    public void setAnalysis_text(String analysis_text) {
        this.analysis_text = analysis_text;
    }

    @Override
    public String toString() {
        return "Answer{" +
                "answer_id=" + answer_id +
                ", prob_id=" + prob_id +
                ", answer_text='" + answer_text + '\'' +
                ", analysis_text='" + analysis_text + '\'' +
                '}';
    }
}
