package com.cisl.smt.dao;

import com.cisl.smt.po.ReviewCollection;
import org.apache.ibatis.annotations.Param;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public interface ReviewCollecRepository extends JpaRepository<ReviewCollection, Long> {
    @Transactional
    @Modifying
    @Query(value = "insert into t_rev_collec(user_id, prob_eval_list) values(?1, ?2)", nativeQuery = true)
    void setCollec(@Param("user_id") Long user_id,
                          @Param("prob_eval_list") String prob_eval_list);

    @Query(value = "select * from t_rev_collec where user_id=?1 limit 1", nativeQuery = true)
    ReviewCollection getCollec(@Param("user_id") Long user_id);
}
