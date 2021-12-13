package com.airticketsalessystem.repository;

import com.airticketsalessystem.model.Ticket;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface TicketRepository extends CrudRepository <Ticket, Integer>{
    List<Ticket> findByUserId(int userid);
}
