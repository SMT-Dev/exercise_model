package com.cisl.smt.service;

import com.cisl.smt.po.ProblemEvaluation;

import java.util.ArrayList;

public interface ProblemEvalService {
    void insertProblemEval(ProblemEvaluation problemEvaluation);

    ArrayList<ProblemEvaluation> getProblemEval(Long user_id);
}
