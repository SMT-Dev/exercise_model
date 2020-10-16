package com.cisl.smt.po;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "t_options")
public class Options {

    @Id
    @GeneratedValue
    private Long options_id;

    private Long prob_id;
    private String option_a;
    private String option_b;
    private String option_c;

    public Options() {};

    public Long getOptions_id() {
        return options_id;
    }

    public Long getProb_id() {
        return prob_id;
    }

    public String getOption_a() {
        return option_a;
    }

    public String getOption_b() {
        return option_b;
    }

    public String getOption_c() {
        return option_c;
    }

    public void setOptions_id(Long options_id) {
        this.options_id = options_id;
    }

    public void setProb_id(Long prob_id) {
        this.prob_id = prob_id;
    }

    public void setOption_a(String option_a) {
        this.option_a = option_a;
    }

    public void setOption_b(String option_b) {
        this.option_b = option_b;
    }

    public void setOption_c(String option_c) {
        this.option_c = option_c;
    }

    @Override
    public String toString() {
        return "Options{" +
                "options_id=" + options_id +
                ", prob_id=" + prob_id +
                ", option_a='" + option_a + '\'' +
                ", option_b='" + option_b + '\'' +
                ", option_c='" + option_c + '\'' +
                '}';
    }
}
