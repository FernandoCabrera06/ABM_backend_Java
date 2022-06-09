package com.abm_instrumentos.Repositorio;

import com.abm_instrumentos.Modelo.Instrumento;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface InstrumentoRepositorio extends JpaRepository<Instrumento, Integer> {
    //BUSQUEDA
    @Query(value = "SELECT * FROM instrumento WHERE instrumento.instrumento LIKE %:termino%",
            nativeQuery = true
    )
    List<Instrumento> buscarXtermino(@Param("termino") String instrumento);
}

