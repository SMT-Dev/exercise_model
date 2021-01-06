package com.cisl.smt.dao;

import com.cisl.smt.po.Point;
import org.apache.ibatis.annotations.Param;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

public interface PointRepository extends JpaRepository<Point, Long> {
    @Query(value = "select * from t_point where point_id=:id", nativeQuery = true)
    Point getPoint(@Param("id") Long id);

    @Query(value = "select point_id from t_point ORDER BY point_id DESC LIMIT 1", nativeQuery = true)
    Long getLastPoint_id();

    @Modifying
    @Transactional
    @Query(value = "INSERT INTO t_point(point_id, grammar_id, point_text) VALUES (?1, ?2, ?3)", nativeQuery = true)
    void insertPoint(Long point_id, Long grammar_id, String point_text);
}
