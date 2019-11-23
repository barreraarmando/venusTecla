/**

Integrantes del equipo:
-Rodrigo Sánchez Torres 
-Hugo Santiago Gómez Salas 
Grupo: 2CM3 
Profesor: Tecla Parra Roberto 
Fecha: 11/23/2019  
Unidad de aprendizaje: Programación Orientada a Objetos 

 */

package Encriptacion;
import java.awt.Color;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.*;

public class obtener{        
        public String convertir(String clavei, String numero) {        
            String cifrado="";
            llaves com = new llaves();
            com.tabla1(clavei, numero);

            cifrado=com.dame2(); 
            return cifrado;
        }
}
