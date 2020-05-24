function cargarDatos() {
var dato=document.getElementById("fecha").value;
var xhttp = new XMLHttpRequest();
xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
    document.getElementById("respuesta").innerHTML = this.responseText;
    }
};
xhttp.open("GET", `../php/ajax.php?dato=${dato}`,true);
xhttp.send();
    }
                        
                        