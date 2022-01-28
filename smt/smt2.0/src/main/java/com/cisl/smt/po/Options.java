package com.cisl.smt.po;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Data
@Table(name = "t_options")
public class Options {

    @Id
    @GeneratedValue
    private Long options_id;

    private String option_a;
    private String option_b;
    private String option_c;
    private String option_d;

    //add
    private String a_image_url;
    private String b_image_url;
    private String c_image_url;
    private String d_image_url;
    private String a_audio_url;
    private String b_audio_url;
    private String c_audio_url;
    private String d_audio_url;
    private int resource_flag;

    public Options() {};

    public Options(String option_a, String option_b, String option_c, String option_d) {
        this.option_a = option_a;
        this.option_b = option_b;
        this.option_c = option_c;
        this.option_d = option_d;
    }
}
