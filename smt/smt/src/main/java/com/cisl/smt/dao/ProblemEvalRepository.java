package com.cisl.smt.dao;

import com.cisl.smt.po.ProblemEvaluation;
import org.apache.ibatis.annotations.Param;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;

public interface ProblemEvalRepository extends JpaRepository<ProblemEvaluation, Long> {
    @Transactional
    @Modifying
    @Query(value = "insert into t_prob_eval(prob_eval_id,prob_id,user_id,choice,choice_text,prob_text,analysis,ans,point,type,prob_eval_res,prob_eval_time,consume_time) values(?1,?2,?3,?4,?5,?6,?7,?8,?9,?10,?11,?12,?13)", nativeQuery = true)
    void insertProblemEval(@Param("prob_eval_id") Long prob_eval_id,
                                  @Param("prob_id") Long prob_id,
                                  @Param("user_id") Long user_id,
                                  @Param("choice") String choice,
                                  @Param("choice_text") String choice_text,
                                  @Param("prob_text") String prob_text,
                                  @Param("analysis") String analysis,
                                  @Param("ans") String ans,
                                  @Param("point") String point,
                                  @Param("type") String type,
                                  @Param("prob_eval_res") int prob_eval_res,
                                  @Param("prob_eval_time") String prob_eval_time,
                                  @Param("consume_time") Long consume_time);

    @Query(value = "select * from t_prob_eval where user_id=?1", nativeQuery = true)
    ArrayList<ProblemEvaluation> getProblemEval(@Param("user_id") Long user_id);
}
