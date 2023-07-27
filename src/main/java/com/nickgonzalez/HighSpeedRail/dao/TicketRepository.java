package com.nickgonzalez.HighSpeedRail.dao;
import com.nickgonzalez.HighSpeedRail.entity.Ticket;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TicketRepository extends JpaRepository<Ticket, Integer> {
}