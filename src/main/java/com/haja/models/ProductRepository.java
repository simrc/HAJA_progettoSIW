package com.haja.models;

import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductRepository extends JpaRepository<Product, Long> {
    // Posso usare tutte le operazioni fornite da JpaRepository nel controller del prodotto
}