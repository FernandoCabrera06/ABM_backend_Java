package com.abm_instrumentos.Servicio;

import com.abm_instrumentos.Modelo.Instrumento;
import com.abm_instrumentos.Repositorio.InstrumentoRepositorio;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class InstrumentoServicio {
    @Autowired
    InstrumentoRepositorio instrumentoRepositorio;

    public List<Instrumento> listarInstrumentos(){
        return instrumentoRepositorio.findAll();
    }

    public List<Instrumento> listarInstrumentosPorTermino(String termino){
        return instrumentoRepositorio.buscarXtermino(termino);
    }

    public Optional<Instrumento> listarInstrumentosPorId(int id){
        return instrumentoRepositorio.findById(id);
    }
    public Instrumento guardarInstrumentos(Instrumento Instrumento){
        return instrumentoRepositorio.save(Instrumento);
    }

    public void borrarInstrumentos(int id){
        instrumentoRepositorio.deleteById(id);

    }

    public Instrumento modificarInstrumentos(Instrumento Instrumento){
        return instrumentoRepositorio.save(Instrumento);
    }
}


