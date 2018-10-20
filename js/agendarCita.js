$(function(){
    
    $("#agendar").click(function(){
        var fecha = $("#fecha").val();
        alert("listo fecha agendad para: "+fecha);
        location.href = "Inicio.jsp";
    });
});
