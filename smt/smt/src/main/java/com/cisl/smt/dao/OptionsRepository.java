package com.cisl.smt.dao;

import com.cisl.smt.po.Options;
import org.apache.ibatis.annotations.Param;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface OptionsRepository extends JpaRepository<Options, Long>{

    @Query(value = "select * from t_options where options_id=:id", nativeQuery = true)
    Options getOptions(@Param("id") Long id);
}
