void main() {
 // Inicialize variáveis para rastrear o número de coelhos jovens, adultos e o mês atual
  
  int coelhosJovens = 2; // Lembrando que temos um casal
  int coelhosAdultos = 0;
  int mes = 1;
  
  
  //Use um loop (for ou while) para simular a passagem do tempo. A simulação deve durar 12 meses.
  for (mes; mes <= 12; mes++){
  
    //Cada casal de coelhos jovens se torna adulto.
    
    coelhosAdultos += coelhosJovens; // Aqui estamos adicionando o valor dos jovens na var adultos
    
    //Cada casal de coelhos adultos gera um novo casal de coelhos jovens.
    
    int novosCoelhosJovens = coelhosAdultos;
    
    coelhosJovens = novosCoelhosJovens;
    
    //Ao final de cada mês, calcule a nova população de coelhos de acordo com as regras:
    
    print("Fim do Mês: $mes. População de coelhos: ${coelhosJovens + coelhosAdultos}. Jovens: $coelhosJovens. Adultos: $coelhosAdultos.");
    
  }
  
}
