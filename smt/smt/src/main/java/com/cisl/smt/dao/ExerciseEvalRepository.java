package com.cisl.smt.dao;

import com.cisl.smt.po.ExerciseEvaluation;
import org.apache.ibatis.annotations.Param;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public interface ExerciseEvalRepository extends JpaRepository<ExerciseEvaluation, Long> {
    @Transactional
    @Modifying
    @Query(value = "insert into t_exer_eval(exer_eval_id,consume_time,exer_eval_score,exer_eval_time,exercise_id,user_id) values(?1,?2,?3,?4,?5,?6)", nativeQuery = true)
    void insertExerciseEval(@Param("exer_eval_id") Long id,
                            @Param("consume_time") Long consume_time,
                            @Param("exer_eval_score") Long score,
                            @Param("exer_eval_time") String exer_eval_time,
                            @Param("exercise_id") Long exercise_id,
                            @Param("user_id") Long user_id);

    @Query(value = "select * from t_exer_eval where user_id=?1", nativeQuery = true)
    List<ExerciseEvaluation> getExerciseEval(@Param("user_id") Long user_id);
}
