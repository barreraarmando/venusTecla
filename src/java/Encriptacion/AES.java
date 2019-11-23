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


public class AES {

    
    public String Encriptar(String password, String correo) throws Exception{
        String passwordEnc=AESFeo.encrypt(password,  correo);
        return passwordEnc;
    }
    
    public String Desencriptar(String passwordcif, String correo) throws Exception{
        String passwordDec=AESFeo.decrypt(passwordcif, correo);
        return passwordDec;
    }
}
