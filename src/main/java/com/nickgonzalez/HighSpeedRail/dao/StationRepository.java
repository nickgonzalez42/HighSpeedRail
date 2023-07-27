package com.nickgonzalez.HighSpeedRail.dao;
import com.nickgonzalez.HighSpeedRail.entity.Station;
import org.springframework.data.jpa.repository.JpaRepository;

public interface StationRepository extends JpaRepository<Station, Integer> {
    Station findStationById(int id);
}
