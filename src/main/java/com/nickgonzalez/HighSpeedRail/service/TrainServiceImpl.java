package com.nickgonzalez.HighSpeedRail.service;

import com.nickgonzalez.HighSpeedRail.dao.TrainRepository;
import com.nickgonzalez.HighSpeedRail.entity.Route;
import com.nickgonzalez.HighSpeedRail.entity.Train;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service
public class TrainServiceImpl implements TrainService {
    private TrainRepository trainRepository;
    @Autowired
    public TrainServiceImpl(TrainRepository theTrainRepository) {
        this.trainRepository = theTrainRepository;
    }
    @Override
    public List<Train> findAll() {
        return trainRepository.findAll();
    }
    @Override
    public List<List<Train>> findFromOriginToDestination() {
        return null;
    }
    @Override
    public Train findTrainById(int id) {
        return trainRepository.findTrainById(id);
    }
    @Override
    public List<List<Train>> findListsOfTrainsInRoutes(List<Route> routes, Date date) {
        List<List<Train>> lists = new ArrayList<>();
        for (Route route : routes) {
            List<Train> trains = trainRepository.findFirst7ByRouteAndDepartureAfterOrderByDeparture(route, date);
            lists.add(trains);
        }
        return lists;
    }
}
