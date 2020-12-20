package com.cisl.smt.service;

import com.cisl.smt.dao.ProblemRepository;
import com.cisl.smt.po.Problem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

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
    public Problem getProblemByProb_id(Long num){
        return problemRepository.getProblemByProb_id(num);
    }

    @Override
    public List<Problem> getProblemByLesson_id(Long lesson_id){
        return problemRepository.getProblemByLesson_id(lesson_id);
    }

    @Override
    public List<Problem> getProblemByPoint_id(Long point_id){
        return problemRepository.getProblemByPoint_id(point_id);
    }
}
