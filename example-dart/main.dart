// Função em Dart

void main(){
  //instanciando classe
  var minhaClasse = MinhaClasse();

  printHW(message: minhaClasse.message);
}

// Operador required, toda quevez que chamar a função é obrigatorio passar o parametro
// requerido, impede null pointer.
void printHW({required String message}){
  print(message.replaceAll("certo", "errado"));
  //Replace: substitui certo -> errado em todas as ocorrencias
}

// Criando uma classe em flutter
// - Operador new não é mais obrigatório
class MinhaClasse{
  var message = "Deu certo";
}