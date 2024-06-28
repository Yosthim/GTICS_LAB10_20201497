package com.example.gtics_lab10_20201497.Entity;

import jakarta.persistence.*;

@Entity
@Table(name = "Images")
public class Images {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idimage", nullable = false)
    private int idImage;
    @Column(nullable = false)
    private String path;
}
