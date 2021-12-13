package com.airticketsalessystem.controller;

import com.airticketsalessystem.model.Flight;
import com.airticketsalessystem.model.Ticket;
import com.airticketsalessystem.model.User;
import com.airticketsalessystem.services.FlightService;
import com.airticketsalessystem.services.TicketService;
import com.airticketsalessystem.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping(value = "/ticket")
public class TicketController {
    @Autowired
    FlightService flightService;

    @Autowired
    TicketService ticketService;

    @Autowired
    UserService userService;

    @GetMapping({"/reservation"})
    public ModelAndView reservation(@RequestParam int flightid, @RequestParam int userid, Model model, HttpSession session, HttpServletResponse response) {
        if (session.getAttribute("user") == null) {
            return new ModelAndView("redirect:/user/signin");
        } else {
            Flight flight = flightService.getFlightById(flightid);
            User user = userService.getUserById(userid);
            Ticket ticket = new Ticket();

            ticket.setFlight(flight);
            ticket.setUser(user);
            Cookie cookie = new Cookie("bilet", flight.getFromLocation() + "-" + flight.getToFrom());
            cookie.setPath("/user/mytickets");
            cookie.setHttpOnly(true);
            cookie.setMaxAge(1 * 24 * 60 * 60);
            response.addCookie(cookie);

            ticketService.addTicket(ticket);

            return new ModelAndView("redirect:/user/mytickets?userid=" + userid);
        }
    }

    @GetMapping({"/reservationcancel"})
    public ModelAndView reservationcancel(@RequestParam int flightid, @RequestParam int userid, Model model, HttpSession session) {
        if (session.getAttribute("user") == null) {
            return new ModelAndView("redirect:/user/signin");
        } else {
            ticketService.deleteTicket(flightid);
            return new ModelAndView("redirect:/user/mytickets?userid=" + userid);
        }
    }
}
