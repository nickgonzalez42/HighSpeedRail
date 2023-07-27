package com.nickgonzalez.HighSpeedRail.service;

import com.nickgonzalez.HighSpeedRail.entity.Route;
import com.nickgonzalez.HighSpeedRail.entity.Train;

import java.util.Date;
import java.util.List;

public interface TrainService {
    public List<Train> findAll();
    public List<List<Train>> findFromOriginToDestination();
    public Train findTrainById(int id);
    public List<List<Train>> findListsOfTrainsInRoutes(List<Route> routes, Date date);
}
