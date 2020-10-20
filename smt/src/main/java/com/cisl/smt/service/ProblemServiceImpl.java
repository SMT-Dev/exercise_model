package com.cisl.smt.service;

import com.cisl.smt.dao.ProblemRepository;
import com.cisl.smt.po.Problem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProblemServiceImpl implements ProblemService{
    /**
     * @description: 实现对题目的获取等操作
     * @author: Hopenx
     * @date: 2020-10-19 20:02
     */

    @Autowired
    private ProblemRepository problemRepository;

    @Override
    public Problem getProblem(Long num){
        Problem problem = problemRepository.findByProb_id(num);
        return problem;
    }
}
