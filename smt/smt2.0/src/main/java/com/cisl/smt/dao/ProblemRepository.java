package com.cisl.smt.dao;

import com.cisl.smt.po.Problem;
import org.apache.ibatis.annotations.Param;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface ProblemRepository extends JpaRepository<Problem, Long> {  //Long表示主键的类型

    @Query(value = "select * from t_problem where prob_id=:num", nativeQuery = true)
    Problem getProblemByProb_id(@Param("num") Long num);

    @Query(value = "select * from t_problem where lesson_id=:lesson_id", nativeQuery = true)
    List<Problem> getProblemByLesson_id(@Param("lesson_id") Long lesson_id);

    @Query(value = "select * from t_problem where point_id=:point_id", nativeQuery = true)
    List<Problem> getProblemByPoint_id(@Param("point_id") Long point_id);
}
