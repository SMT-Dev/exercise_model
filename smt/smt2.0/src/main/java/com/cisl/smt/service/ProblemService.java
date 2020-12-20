package com.cisl.smt.service;

import com.cisl.smt.po.Problem;

import java.util.List;

public interface ProblemService {
    Problem getProblemByProb_id(Long num);

    List<Problem> getProblemByLesson_id(Long lesson_id);

    List<Problem> getProblemByPoint_id(Long point_id);
}
