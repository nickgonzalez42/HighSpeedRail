package com.nickgonzalez.HighSpeedRail.dao;

import com.nickgonzalez.HighSpeedRail.entity.Route;
import com.nickgonzalez.HighSpeedRail.entity.Train;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Date;
import java.util.List;

public interface TrainRepository extends JpaRepository<Train, Integer> {
    Train findTrainById(int id);
    List<Train> findByRouteAndId(Route route, int id);
    List<Train> findFirst7ByRouteAndDepartureAfterOrderByDeparture(Route route, Date departure);
}