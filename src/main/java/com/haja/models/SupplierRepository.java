package com.haja.models;

import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by alessio on 19/05/15.
 * Project: HAJA_progettoSIW
 * Package: com.haja.models
 */
public interface SupplierRepository extends JpaRepository<Supplier, Long> {
    // Posso usare tutte le operazioni fornite da JpaRepository nel controller del fornitore
}
