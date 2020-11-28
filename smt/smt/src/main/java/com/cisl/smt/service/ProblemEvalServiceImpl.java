package com.cisl.smt.service;

import com.cisl.smt.dao.ProblemEvalRepository;
import com.cisl.smt.po.ProblemEvaluation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class ProblemEvalServiceImpl implements ProblemEvalService {
    /**
     * @description: 插入一道题的评判信息进入数据库
     * @author: Hopenx
     * @date: 2020-11-27 07:47
     */

    @Autowired
    private ProblemEvalRepository problemEvalRepository;

    @Override
    public void insertProblemEval(ProblemEvaluation pe) {
        problemEvalRepository.insertProblemEval(pe.getProb_eval_id(),
                pe.getProb_id(), pe.getUser_id(), pe.getChoice(),
                pe.getChoice_text(), pe.getProb_text(), pe.getAnalysis(),
                pe.getAns(), pe.getPoint(), pe.getType(), pe.getProb_eval_res(),
                pe.getProb_eval_time(), pe.getConsume_time());
    }

    @Override
    public ArrayList<ProblemEvaluation> getProblemEval(Long user_id) {
        return problemEvalRepository.getProblemEval(user_id);
    }

}
