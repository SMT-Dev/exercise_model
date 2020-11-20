package com.cisl.smt.dao;

import com.cisl.smt.po.Point;
import org.apache.ibatis.annotations.Param;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface PointRepository extends JpaRepository<Point, Long> {
    @Query(value = "select * from t_point where point_id=:id", nativeQuery = true)
    Point getPoint(@Param("id") Long id);
}
