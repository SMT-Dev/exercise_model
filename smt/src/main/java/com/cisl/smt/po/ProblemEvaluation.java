package com.cisl.smt.po;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "t_prob_eval")
public class ProblemEvaluation {

    @Id
    @GeneratedValue
    private Long prob_eval_id;

    private Long prob_id;
    private Long user_id;
    private Long prob_eval_res;

    @Temporal(TemporalType.TIMESTAMP)
    private Date prob_eval_time;

    private Long cosume_time;

    public ProblemEvaluation() {};

    public Long getProb_eval_id() {
        return prob_eval_id;
    }

    public Long getProb_id() {
        return prob_id;
    }

    public Long getUser_id() {
        return user_id;
    }

    public Long getProb_eval_res() {
        return prob_eval_res;
    }

    public Date getProb_eval_time() {
        return prob_eval_time;
    }

    public Long getCosume_time() {
        return cosume_time;
    }

    public void setProb_eval_id(Long prob_eval_id) {
        this.prob_eval_id = prob_eval_id;
    }

    public void setProb_id(Long prob_id) {
        this.prob_id = prob_id;
    }

    public void setUser_id(Long user_id) {
        this.user_id = user_id;
    }

    public void setProb_eval_res(Long prob_eval_res) {
        this.prob_eval_res = prob_eval_res;
    }

    public void setProb_eval_time(Date prob_eval_time) {
        this.prob_eval_time = prob_eval_time;
    }

    public void setCosume_time(Long cosume_time) {
        this.cosume_time = cosume_time;
    }

    @Override
    public String toString() {
        return "ProblemEvaluation{" +
                "prob_eval_id=" + prob_eval_id +
                ", prob_id=" + prob_id +
                ", user_id=" + user_id +
                ", prob_eval_res=" + prob_eval_res +
                ", prob_eval_time=" + prob_eval_time +
                ", cosume_time=" + cosume_time +
                '}';
    }
}
