package com.abm_instrumentos.Controlador;

import com.abm_instrumentos.Modelo.Instrumento;
import com.abm_instrumentos.Servicio.InstrumentoServicio;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@CrossOrigin(origins = "*", allowedHeaders = "*")
@RestController
public class InstrumentoControlador {
    @Autowired
    InstrumentoServicio instrumentoServicio;

    @GetMapping("/instrumentos")
    public List<Instrumento> listarInstrumentos() {
        return instrumentoServicio.listarInstrumentos();
    }

    @GetMapping("/instrumentos/busqueda/{termino}")
    public List<Instrumento> listarInstrumentosPorId(@PathVariable("termino") String termino) {
        return instrumentoServicio.listarInstrumentosPorTermino(termino);
    }

    @GetMapping("/instrumentoxid/{id}")
    public Optional<Instrumento> listarInstrumentosPorId(@PathVariable("id") int id) {
        return instrumentoServicio.listarInstrumentosPorId(id);
    }

    @PostMapping("/guardarInstrumento")
    public Instrumento crearInstrumentos(@RequestBody Instrumento instrumento) {
        return instrumentoServicio.guardarInstrumentos(instrumento);
    }

    @DeleteMapping("/eliminarxid/{id}")
    public void borrarInstrumentos(@PathVariable("id") int id) {
        instrumentoServicio.borrarInstrumentos(id);
    }

    @PutMapping("/actualizarInstrumento/{id}")
    public Instrumento modificarInstrumentos(@RequestBody Instrumento instrumento, @PathVariable int id) {
        Instrumento instrumentoActual = instrumentoServicio.listarInstrumentosPorId(id).get();
        instrumentoActual.setInstrumento(instrumento.getInstrumento());
        instrumentoActual.setMarca(instrumento.getMarca());
        instrumentoActual.setModelo(instrumento.getModelo());
        instrumentoActual.setImagen(instrumento.getImagen());
        instrumentoActual.setPrecio(instrumento.getPrecio());
        instrumentoActual.setCostoEnvio(instrumento.getCostoEnvio());
        instrumentoActual.setCantidadVendida(instrumento.getCantidadVendida());
        instrumentoActual.setDescripcion(instrumento.getDescripcion());
        instrumentoServicio.guardarInstrumentos(instrumentoActual);
        return instrumentoServicio.modificarInstrumentos(instrumento);
    }
}


