package com.haja.models;

import org.springframework.data.jpa.repository.JpaRepository;


public interface UserRepository extends JpaRepository<User, Long> {
        // Posso usare tutte le operazioni fornite da JpaRepository nel controller dell'utente
}