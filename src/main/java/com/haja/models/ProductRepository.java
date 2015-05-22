package com.haja.models;

import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ProductRepository extends JpaRepository<Product, Long> {
    // Posso usare tutte le operazioni fornite da JpaRepository nel controller del prodotto

    /*Per il catalogo prodotto che mostro all'utente*/
    List<Product> findAvailableProducts();
}