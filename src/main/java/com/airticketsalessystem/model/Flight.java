package com.airticketsalessystem.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Setter
@Getter
@Entity
@Table(name = "flight")
public class Flight {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "fromLocation")
    private String fromLocation;

    @Column(name = "toFrom")
    private String toFrom;

    @Column(name = "date")
    private java.sql.Date date;

    @Column(name = "price", nullable = false)
    private int price;
}
