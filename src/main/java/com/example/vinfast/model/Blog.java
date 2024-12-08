package com.example.vinfast.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Blog {
    int blogID;
    String title;
    String content;
    int authorID;
    int categoryID;
    String thumbnail;
    String tags;
    int views;
    String createdAt;
    String updatedAt;
}

