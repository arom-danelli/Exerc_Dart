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
    
    // Aqui estamos calculando a quantidade de coelhos que vão ser caçades.
    
    int coelhoDeitado = ((coelhosJovens + coelhosAdultos) * 0.1).toInt();
    
    // Vamos criar condições para que a redução seja verdadeira
    
    if(coelhoDeitado > 0) { // aqui basicamente é uma trava para a condicional ser válida enquanto houver coelho.
      
      if (coelhosJovens >= coelhoDeitado){
        coelhosJovens -= coelhoDeitado;
      }else{
        coelhosAdultos -= (coelhoDeitado - coelhosJovens);
        coelhosJovens = 0;
      }
    }
    
    
    //Ao final de cada mês, calcule a nova população de coelhos de acordo com as regras:
    
    print("Fim do Mês: $mes. População de coelhos: ${coelhosJovens + coelhosAdultos}. Jovens: $coelhosJovens. Adultos: $coelhosAdultos.");
    
  }
  
}
