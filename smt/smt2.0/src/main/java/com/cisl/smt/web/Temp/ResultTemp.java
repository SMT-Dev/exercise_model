package com.cisl.smt.web.Temp;

public class ResultTemp {
    /**
     * @description: 评卷结果综述
     * @author: Hopenx
     * @date: 2020-11-23 20:39
     */

    private String time = "2020-10-30 15:10:11";
    private int level = 1;
    private int score = 88;
    private int unhandle = 88;
    private int easy = 88;
    private int medium = 88;
    private int hard = 88;

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public int getLevel() {
        return level;
    }

    public void setLevel(int level) {
        this.level = level;
    }

    public int getScore() {
        return score;
    }

    public void setScore(int score) {
        this.score = score;
    }

    public int getUnhandle() {
        return unhandle;
    }

    public void setUnhandle(int unhandle) {
        this.unhandle = unhandle;
    }

    public int getEasy() {
        return easy;
    }

    public void setEasy(int easy) {
        this.easy = easy;
    }

    public int getMedium() {
        return medium;
    }

    public void setMedium(int medium) {
        this.medium = medium;
    }

    public int getHard() {
        return hard;
    }

    public void setHard(int hard) {
        this.hard = hard;
    }

    @Override
    public String toString() {
        return "ResultTemp{" +
                "time='" + time + '\'' +
                ", level=" + level +
                ", score=" + score +
                ", unhandle=" + unhandle +
                ", easy=" + easy +
                ", medium=" + medium +
                ", hard=" + hard +
                '}';
    }
}
