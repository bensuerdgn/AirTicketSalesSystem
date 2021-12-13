package com.airticketsalessystem.repository;

import com.airticketsalessystem.model.Admin;
import com.airticketsalessystem.model.User;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface AdminRepository extends CrudRepository <Admin, Integer>{
    Admin findByUsername(String username);
}
