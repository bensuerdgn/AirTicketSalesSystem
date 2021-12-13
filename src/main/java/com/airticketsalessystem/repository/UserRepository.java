package com.airticketsalessystem.repository;

import com.airticketsalessystem.model.Admin;
import com.airticketsalessystem.model.User;
import org.springframework.data.repository.CrudRepository;

public interface UserRepository extends CrudRepository <User, Integer>{
    User findByUsername(String username);
}
