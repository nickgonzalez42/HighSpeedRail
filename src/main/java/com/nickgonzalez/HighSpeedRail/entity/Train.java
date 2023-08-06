package com.nickgonzalez.HighSpeedRail.entity;


import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Calendar;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "trains")
@Getter
@Setter
@ToString
public class Train {
    @Id
    @Column(name="id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @ManyToOne
    @JoinColumn(name = "route_id")
    private Route route;

    @Column(name="departure_time")
    private Date departure;
    @Column(name="arrival_time")
    private Date arrival;
    @Column(name="current_capacity")
    private int currentCapacity;
    @Column(name="max_capacity")
    private int maxCapacity;
    @OneToMany(mappedBy = "train", fetch = FetchType.LAZY)
    @JsonIgnore
    private List<Ticket> tickets;
    @Transient
    private double ticketPrice = 0;

    public Train() {
    }
    public Train(Route route, Date departure, Date arrival, int currentCapacity, int maxCapacity) {
        this.route = route;
        this.departure = departure;
        this.arrival = arrival;
        this.currentCapacity = currentCapacity;
        this.maxCapacity = maxCapacity;
    }
    @PostLoad
    public void calculateCost() {
        double costPerMile = 0.3;
        this.ticketPrice = costPerMile * this.route.getDistance();
    }
    public Date timeAdjustedArrival() {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(arrival);
        String timezone = route.getOrigin().getTz();
        if (timezone == "EST") {
            calendar.add(Calendar.HOUR_OF_DAY, 3);
        }
        else if (timezone == "CST") {
            calendar.add(Calendar.HOUR_OF_DAY, 2);
        }
        else if (timezone == "MST") {
            calendar.add(Calendar.HOUR_OF_DAY, 1);
        }
        return calendar.getTime();
    }
    public Date timeAdjustedDeparture() {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(departure);
        String timezone = route.getOrigin().getTz();
        if (timezone == "EST") {
            calendar.add(Calendar.HOUR_OF_DAY, 3);
        }
        else if (timezone == "CST") {
            calendar.add(Calendar.HOUR_OF_DAY, 2);
        }
        else if (timezone == "MST") {
            calendar.add(Calendar.HOUR_OF_DAY, 1);
        }
        return calendar.getTime();
    }
}
