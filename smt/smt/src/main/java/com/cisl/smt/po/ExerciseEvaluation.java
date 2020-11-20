package com.cisl.smt.po;

import org.springframework.data.annotation.TypeAlias;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "t_exer_eval")
public class ExerciseEvaluation {

    @Id
    @GeneratedValue
    private Long exer_eval_id;

    private Long exercise_id;
    private Long user_id;
    private Long exer_eval_score;
    private Long cosume_time;

    @Temporal(TemporalType.TIMESTAMP)
    private Date exer_eval_time;

    public ExerciseEvaluation() {};

    public Long getExer_eval_id() {
        return exer_eval_id;
    }

    public void setExer_eval_id(Long exer_eval_id) {
        this.exer_eval_id = exer_eval_id;
    }

    public Long getExercise_id() {
        return exercise_id;
    }

    public void setExercise_id(Long exercise_id) {
        this.exercise_id = exercise_id;
    }

    public Long getUser_id() {
        return user_id;
    }

    public void setUser_id(Long user_id) {
        this.user_id = user_id;
    }

    public Long getExer_eval_score() {
        return exer_eval_score;
    }

    public void setExer_eval_score(Long exer_eval_score) {
        this.exer_eval_score = exer_eval_score;
    }

    public Long getCosume_time() {
        return cosume_time;
    }

    public void setCosume_time(Long cosume_time) {
        this.cosume_time = cosume_time;
    }

    public Date getExer_eval_time() {
        return exer_eval_time;
    }

    public void setExer_eval_time(Date exer_eval_time) {
        this.exer_eval_time = exer_eval_time;
    }

    @Override
    public String toString() {
        return "ExerciseEvaluation{" +
                "exer_eval_id=" + exer_eval_id +
                ", exercise_id=" + exercise_id +
                ", user_id=" + user_id +
                ", exer_eval_score=" + exer_eval_score +
                ", cosume_time=" + cosume_time +
                ", exer_eval_time=" + exer_eval_time +
                '}';
    }
}
