package com.nickgonzalez.HighSpeedRail.entity;

import jakarta.persistence.*;
import lombok.*;

import java.util.UUID;

@Table(name = "tickets")
@Entity
@Getter
@Setter
public class Ticket {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;
    @Column(name = "passenger_name")
    private String passengerName;
    @ManyToOne
    @JoinColumn(name = "train_id")
    private Train train;

    public Ticket() {
    }

    public Ticket(String passengerName, Train train) {
        this.passengerName = passengerName;
        this.train = train;
    }
}
