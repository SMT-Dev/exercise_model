package com.cisl.smt.dao;

import com.cisl.smt.po.Problem;
import org.apache.ibatis.annotations.Param;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface ProblemRepository extends JpaRepository<Problem, Long> {  //Long表示主键的类型

    @Query(value = "select * from t_problem where prob_id=:num", nativeQuery = true)
    Problem findByProb_id(@Param("num") Long num);
}
