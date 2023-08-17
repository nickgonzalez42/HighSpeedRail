package com.nickgonzalez.HighSpeedRail.controller;

import com.nickgonzalez.HighSpeedRail.entity.Route;
import com.nickgonzalez.HighSpeedRail.entity.Station;
import com.nickgonzalez.HighSpeedRail.entity.Ticket;
import com.nickgonzalez.HighSpeedRail.entity.Train;
import com.nickgonzalez.HighSpeedRail.pojo.TicketList;
import com.nickgonzalez.HighSpeedRail.pojo.Trip;
import com.nickgonzalez.HighSpeedRail.service.RouteService;
import com.nickgonzalez.HighSpeedRail.service.StationService;
import com.nickgonzalez.HighSpeedRail.service.TicketService;
import com.nickgonzalez.HighSpeedRail.service.TrainService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import jakarta.validation.Valid;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.List;

@Controller
public class HomeController {
    private TrainService trainService;
    private RouteService routeService;
    private StationService stationService;
    private TicketService ticketService;
    public HomeController(TrainService theTrainService, TicketService ticketService, RouteService theRouteService, StationService theStationService) {
        this.routeService = theRouteService;
        this.trainService = theTrainService;
        this.stationService = theStationService;
        this.ticketService = ticketService;
    }
    @ModelAttribute(name = "stations")
    public List<Station> stations() {
        List<Station> stations = stationService.findAll();
        Collections.sort(stations, Comparator.comparing(Station::getName));
        return stations;
    }
    @ModelAttribute(name = "trip")
    public Trip trip() {
        return new Trip();
    }
    @ModelAttribute(name = "ticketList")
    public TicketList ticketList() {
        return new TicketList();
    }

    @GetMapping("/")
    public String home() {
        return "home";
    }

    @GetMapping("/map")
    public String pickOriginAndDestination() {
        return "map";
    }
    @GetMapping("/options")
    public String getTrainSchedule(
            @RequestParam("outbound") int outbound,
            @RequestParam("inbound") int inbound,
            @RequestParam("departure-date") String departureDate,
            Model model
    ) {
        Station origin = this.stationService.findStationById(outbound);
        Station destination = this.stationService.findStationById(inbound);
        List<Station> stations = this.stationService.findStationsFromOriginToDestination(origin, destination);
        List<Route> routes = this.routeService.findRoutesFromOriginToDestination(stations);
        Date date1 = null;
        try {
            date1 = new SimpleDateFormat("yyyy-MM-dd").parse(departureDate);
            List<List<Train>> tempTrains = trainService.findListsOfTrainsInRoutes(routes, date1);
            model.addAttribute("trains", tempTrains);
            return "options";
        } catch (ParseException e) {
            throw new RuntimeException(e);
        }
    }
    @PostMapping("/purchase")
    public String purchase(@Valid Trip trip, @ModelAttribute TicketList ticketList) {
        for (int id : trip.getTrainIds()) {
            Ticket tempTicket = new Ticket(trip.getCustomerName(), trainService.findTrainById(id));
            Ticket ticket = ticketService.save(tempTicket);
            ticketList.addTicket(ticket);
            System.out.println(ticket.getTrain().getRoute().getOrigin().getName());
        }
        return "purchase";
    }
    @GetMapping("/about")
    public String about() {
        return "about";
    }
}
