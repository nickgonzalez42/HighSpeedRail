package com.nickgonzalez.HighSpeedRail.service;

import com.nickgonzalez.HighSpeedRail.entity.Ticket;

public interface TicketService {
    Ticket save(Ticket ticket);
    Ticket findById(int id);
}