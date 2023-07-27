package com.nickgonzalez.HighSpeedRail.service;

import com.nickgonzalez.HighSpeedRail.entity.Route;
import com.nickgonzalez.HighSpeedRail.entity.Station;

import java.util.List;

public interface RouteService {
    public List<Route> findAll();
    Route findById(int id);
    List<Route> findRoutesFromOriginToDestination(List<Station> stations);
}
