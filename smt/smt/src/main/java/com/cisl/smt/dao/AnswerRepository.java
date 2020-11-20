package com.cisl.smt.dao;

import com.cisl.smt.po.Answer;
import org.apache.ibatis.annotations.Param;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface AnswerRepository extends JpaRepository<Answer, Long> {
    @Query(value = "select * from t_answer where answer_id=:id", nativeQuery = true)
    Answer getAnswer(@Param("id") Long id);
}
