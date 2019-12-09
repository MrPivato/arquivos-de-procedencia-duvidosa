var vetor = Array.from({ length: 10 }, () => Math.floor(Math.random() * 500));

console.log(vetor, "=> Vetor gerado");

for (var i = 0; i < vetor.length; i++) {
  for (var k = 0; k < vetor.length; k++) {
    if (vetor[i] < vetor[k] && i != k) {
      var tmp = vetor[k];
      vetor[k] = vetor[i];
      vetor[i] = tmp;
    }
  }
}

console.log(vetor, "=> Vetor ordenado");