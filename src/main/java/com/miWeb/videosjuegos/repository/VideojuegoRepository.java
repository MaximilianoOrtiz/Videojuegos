package com.miWeb.videosjuegos.repository;

import com.miWeb.videosjuegos.domain.Videojuego;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

    
public interface VideojuegoRepository extends  JpaRepository<Videojuego,Integer >{
     
    @Query("from Videojuego v order by v.distribuidor.nombre  ")  //consulta en PSQL , el select es opcional   
    //@Query(value = "select * from videojuego order by nombre", nativeQuery=true)
    //@Query (value = "select * from videojuego inner join distribuidor on videojuego.distribuidor_id = distribuidor.id order by videojuego.nombre ", nativeQuery = true)
    List<Videojuego> buscarTodos(); 
    
    @Query("from  Videojuego v where v.distribuidor.id = ?1 order by v.nombre") //accede por la posicion del parametro
    //@Query("from  Videojuego v where v.distribuidor.id = :distribuidorId order by v.nombre") accede por nombre del parametro
    List<Videojuego> buscarPorDistribuidor(int distribuidorId);
    
//    consulta para buscar un distribuidor por nombre con psql
//    @Query("from Videojuego v where v.distribuidor.nombre = ?1 order by v.nombre")
//    consulta con sql nativo
//    @Query (value = "select * from videojuego inner join distribuidor in videojuego.distribuidor_id = distribuidor.id where distribuidor.nombre = nombre order by nombre",nativeQuery = true)
//    
//    List<Videojuego> buscarDestribuidorPorNombre(String nombre);
    
    @Query("from Videojuego v where v.nombre like %?1%")
    List<Videojuego> findByNombreContainig(String consulta);
    
}


