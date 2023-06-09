package com.SpringBoot.Portofolio.service;

import com.SpringBoot.Portofolio.model.Proyecto;
import java.util.List;

public interface IProyectoService {
    
   public List<Proyecto> getProyecto(); 
   
   public void saveProyecto(Proyecto proyecto); 
   
   public void deleteProyecto(Long id); 
   
   public Proyecto findProyecto(Long id); 
}
