package com.cisl.smt.dao;

import com.cisl.smt.po.Options;
import org.apache.ibatis.annotations.Param;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

public interface OptionsRepository extends JpaRepository<Options, Long>{

    @Query(value = "select * from t_options where options_id=:id", nativeQuery = true)
    Options getOptions(@Param("id") Long id);

    @Transactional
    @Modifying
    @Query(value = "UPDATE t_options SET option_a=:optionA, option_b=:optionB, option_c=:optionC, option_d=:optionD WHERE options_id=:id", nativeQuery = true)
    void updateOptions(@Param("id") Long id, @Param("optionA") String optionA, @Param("optionB") String optionB, 
                       @Param("optionC") String optionC, @Param("optionD") String optionD);

    @Transactional
    @Modifying
    @Query(value = "INSERT INTO t_options(options_id, option_a, option_b, option_c, option_d) VALUES (?1, ?2, ?3, ?4, ?5);", nativeQuery = true)
    void insertOptions(Long id, String optionA, String optionB, String optionC, String optionD);
}
