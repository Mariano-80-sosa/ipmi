void CambiarEstados(){
    if (estadoActual == Estados.Estado1) {estadoActual = Estado2;
    }
    else if (estado == Estados.Estado2){
      estadoActual = Estado3;}
    else if (estado == Estados.Estado3) {estadoActual = Estado4;}
    else if (estado== Estados.Estado4) {estadoActual = Estado5;}
    else if (estado == Estados.Estado5) {estadoActual = Estado6;}
    else if (estado == Estados.Estado6) {estadoActual = Estado7;}
    else {estado = Estado1;}
}
