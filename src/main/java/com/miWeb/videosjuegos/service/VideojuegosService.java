package com.miWeb.videosjuegos.service;

import com.miWeb.videosjuegos.domain.Videojuego;
import com.miWeb.videosjuegos.repository.VideojuegoRepository;
import java.util.List;
import org.springframework.stereotype.Service;

@Service
public class VideojuegosService {
     
    private final VideojuegoRepository videojuegoRepository;

    public VideojuegosService(VideojuegoRepository videojuegoRepository) {
        this.videojuegoRepository = videojuegoRepository;
    }
    
    public List<Videojuego>  buscarDestacados (){
//        List<Videojuego> destacados= new ArrayList();
    
//        Videojuego juego;
//        juego=new Videojuego();
//        juego.setId(1);
//        juego.setNombre("Black op ");
//        juego.setDescripcion("juego de accion velico");
//        juego.setImagenUrl("https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/styles/cover_290x414/public/media/image/2016/08/caratula-call-duty-black-ops-2.jpg?itok=iogHHuur");
//        
//        destacados.add(juego);
//       return destacados;

//          return  videojuegoRepository.findAll();
           return  videojuegoRepository.buscarTodos();
    }
    
    public List<Videojuego> buscarPorDistribuidor(int distribuidorId){
        return videojuegoRepository.buscarPorDistribuidor(distribuidorId);
    }
    
    public List<Videojuego> buscar(String consulta){
        return videojuegoRepository.findByNombreContainig(consulta);
    }
    
    
//    public List<Videojuego> buscarDestribuidorPorNombre (String nombre){
//        return videojuegoRepository.buscarDestribuidorPorNombre(nombre);
//    }
//    
    
}
