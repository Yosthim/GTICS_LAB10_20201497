package com.example.gtics_lab10_20201497.Entity;

import jakarta.persistence.*;

@Entity
@Table(name = "gameparameters")
public class GameParameters {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idgame")
    private int idGame;
    @Column(name = "numfilas")
    private int numFilas;
    @Column(name = "numcol")
    private int numCol;
    @Column(name = "numimg")
    private int numImg;
}
