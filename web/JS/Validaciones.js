            var conf1=false;
            var conf2=false;
            var conf3=false;
            
            function solocadena(e)
            {
            var keynum;
            if(window.event)
                keynum = e.keyCode;
            else 
                if (e.which)
                    keynum=e.which;
            
            if ((keynum>=97&&keynum<=122) || (keynum>=65&&keynum<=90) || (keynum>=128&&keynum<=165) || keynum === 8 || keynum === 32)
                return true;
            else
                return false;
            }
            
            function validarcontra()
            {
                var contra1 = (document.getElementById("con1")).value;
                var contra2 = (document.getElementById("con2")).value;
                
                if (contra1 === "" || contra2 === ""){
                    alert("Por favor, confirma tu contraseña");
                    conf1 = false;
                    conf2 = false;
                    conf3 = false;
                }
                else{
                    if (contra1 === contra2)
                    {
                        conf1=true;
                    }
                    else
                        alert("Por favor, confirma tu contraseña");
                        conf1 = false;
                        conf2 = false;
                        conf3 = false;
                }
            }
            
            function soloCorreo()
            {
                var texto4 = document.getElementById("corr");
                var cuantos = texto4.value.length;
                var cadena=texto4.value;
                var arroba=0;
                var puntos=0;
                
                for (i=0; i<cuantos; i++)
                {
                    if (cadena.charAt(i) === "@")
                        ++ arroba;
                    if (cadena.charAt(i) === ".")
                        ++ puntos;
                }
                if ((arroba === 0 || arroba>1) || (puntos === 0 ||  puntos > 3))
                {
                    alert ("Por favor, ingresa un correo válido");
                    texto4.focus();
                    conf1 = false;
                    conf2 = false;
                    conf3 = false;
                }
                else 
                    conf2=true;
            }
            
            function soloEnteros(e)
            {
            var keynum;
            if(window.event)
                keynum = e.keyCode;
            else 
                if (e.which)
                    keynum=e.which;
            
            if ((keynum>=48&&keynum<=57) || keynum === 8)
                return true;
            else
                return false;
            }