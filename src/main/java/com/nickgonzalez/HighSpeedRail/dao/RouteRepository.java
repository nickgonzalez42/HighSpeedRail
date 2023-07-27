package com.nickgonzalez.HighSpeedRail.dao;

import com.nickgonzalez.HighSpeedRail.entity.Route;
import com.nickgonzalez.HighSpeedRail.entity.Station;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RouteRepository extends JpaRepository<Route, Integer> {
    Route findById(int id);
    Route findByOriginAndDestination(Station destination, Station origin);
}
