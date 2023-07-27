package com.nickgonzalez.HighSpeedRail.service;
import com.nickgonzalez.HighSpeedRail.entity.Station;
import java.util.List;
public interface StationService {
    public List<Station> findAll();
    public Station findStationById(int id);
    public List<Station> findStationsFromOriginToDestination(Station origin, Station destination);
}
