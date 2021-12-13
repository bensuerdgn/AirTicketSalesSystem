package com.airticketsalessystem.services;

import com.airticketsalessystem.model.Flight;

import java.util.List;

public interface FlightService {
    public List<Flight> getAllFlights();
    public Flight getFlightById(int id);
    public void addFlight(Flight flight);
    public void deleteFlight(int id);
    public Flight updateFlight(Flight flight, int id);
}
