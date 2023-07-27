package com.nickgonzalez.HighSpeedRail.pojo;

import com.nickgonzalez.HighSpeedRail.entity.Ticket;
import lombok.Data;

import java.util.ArrayList;
import java.util.List;

@Data
public class TicketList {
    private List<Ticket> tickets = new ArrayList<>();
    public void addTicket(Ticket ticket){
        tickets.add(ticket);
    }
}