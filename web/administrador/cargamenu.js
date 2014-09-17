/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function cambiarContenido(div,pagina){
    $(div).load(pagina);
}




function cerrarS(){
    document.location = "../cerrar_sesion.jsp";
}
           function envio(formulario,lugar) {
                $(formulario).ajaxForm({
                    type: "POST",
                    target: lugar
                });
            }
      