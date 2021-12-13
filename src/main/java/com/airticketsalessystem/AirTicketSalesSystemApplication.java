package com.airticketsalessystem;

import com.airticketsalessystem.model.Admin;
import com.airticketsalessystem.services.AdminService;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
public class AirTicketSalesSystemApplication extends SpringBootServletInitializer {
    @Autowired
    AdminService adminService;

    @Bean
    InitializingBean sendDatabase() {
        adminService.deleteAllAdmin();

        Admin admin = new Admin();
        admin.setEmail("admin@gmail.com");
        admin.setUsername("admin");
        admin.setPassword("admin1234");
        admin.setRole("admin");

        Admin editor = new Admin();
        editor.setEmail("editor@gmail.com");
        editor.setUsername("editor");
        editor.setPassword("editor1234");
        editor.setRole("editor");

        return () -> {
            adminService.addAdmin(admin);
            adminService.addAdmin(editor);
        };
    }

    public static void main(String[] args) {
        SpringApplication.run(AirTicketSalesSystemApplication.class, args);
    }

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(AirTicketSalesSystemApplication.class);
    }
}
