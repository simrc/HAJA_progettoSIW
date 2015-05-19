package com.haja.models;

import org.springframework.data.jpa.repository.JpaRepository;

public interface AdminRepository extends JpaRepository{
    // Posso usare tutte le operazioni fornite da JpaRepository nel controller dell'utente
}
