package com.example.vinfast.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Date;
import java.sql.Timestamp;

@Builder
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Users {
    private Integer userId;
    private String fullName;
    private Date dob;
    private String gender;
    private String email;
    private String password;
    private String phoneNumber;
    private String address;
    private String role;
    private String accountType;
    private String status;
    private Timestamp createdAt;
    private String lastLogined;
    private String avatar;
}

//Lớp Users trong package com.example.vinfast.
// model là một POJO (Plain Old Java Object) dùng để đại diện cho dữ liệu của một người dùng trong ứng dụng.
// Lớp này sử dụng các annotation của thư viện Lombok để giảm thiểu mã boilerplate như getter, setter, constructor, v.v.