var vetor = Array.from({ length: 10 }, () => Math.floor(Math.random() * 500));
var menor = vetor[0];
var maior = vetor[0];

for (let i = 0; i < vetor.length; i++) {
  for (let k = 0; k < vetor.length; k++) {
    if (vetor[k] < menor) {
      menor = vetor[k];
    } else if (vetor[k] > maior) {
      maior = vetor[k];
    }
  }
}

console.log(vetor, "=> Vetor gerado");
console.log(menor, "=> Menor número do Vetor");
console.log(maior, "=> Maior número do Vetor");
