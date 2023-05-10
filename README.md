# Requisitos

**Utilizar qualquer linguagem de programação.**

A ideia é validar a lógica e principalmente a forma como resolveu o problema.

Vamos querer ouvir como aprendeu, como descobriu e o porquê escolheu fazer assim no seu código.

Não é necessário conhecer todos recursos para resolver o desafio, a proposta é "correr atrás" para aprender e então resolver.

Sugerimos procurar no Google, Stack Overflow, YouTube, grupos técnicos, amigos, colegas de sala, professor, o que preferir -- _lembra de contar pra gente depois hein!_

Não tem prazo específico para terminar, quando acabar nos envie.

Lembre-se que esse prazo também será levado em consideração, não fique com pressa para terminar rápido se estiver errado ou incompleto, só que também não gaste _um ano_ para terminar 😉

---

## Problema a ser resolvido

Considerando um array de senhas em string, que pode ser uma constante no código, imprimir na tela somente as que forem senhas fortes.

Para uma senha ser forte, ela deve ter:

- no mínimo 7 caracteres
- pelo menos uma letra maiúscula
- pelo menos uma letra minúscula
- \+ _E se for tranquilo para você, verifica também se tem um caracter especial (dentro dos que você preferir!) 🙂_

---

### Extra / Bônus

Você ganhará pontos extras se utilizar um repositório Git e enviar sua solução no [GitHub](https://github.com/).

_(melhor ainda se fizer um fork desse 🤩)_.

Se você não conhecer o [Git](https://www.google.com/search?q=git), não tem problema nenhum. Pode aprender e nos contar como aprendeu!

Não precisa virar um especialista, apenas o básico! Só que iremos querer saber como você aprendeu

Queremos avaliar sua capacidade de aprender e de buscar ajuda.

Tem muito material pronto e gratuito sobre Git e GitHub, use a internet a seu favor.

De qualquer maneira, isso será útil para toda sua vida enquanto profissional de TI! 👍

---

#### Exemplo

Considerando um array com as strings:

- #forTe1
- senhafraca
- Qu@s1
- Voce@Consegue!2023

Será impresso na tela apenas duas linhas:

---
\#forTe1

Voce@Consegue!2023

---

Já que são as únicas que atendem os requisitos para uma senha forte.

- **#forTe1**
  - ✅ >= 7 caracteres (7)
  - ✅ Tem letra maiúscula (T)
  - ✅ Tem letra minúscula (fore)
  - ✅ Tem número (1)
  - ✅ _E tem caracter especial, caso você consiga validar (#)_

- senhafraca

  - ✅ >= 7 caracteres (10)
  - ❌ Tem letra maiúscula
  - ✅ Tem letra minúscula (senhafraca)
  - ❌ Tem número

- Qu@s1

  - ❌ >= 7 caracteres (5)
  - ✅ Tem letra maiúscula (Q)
  - ✅ Tem letra minúscula (us)
  - ✅ Tem número (1)
  - ✅ _E tem caracter especial, caso você consiga validar (@)_

- **Voce@Consegue!2023**
  - ✅ >= 7 caracteres (18)
  - ✅ Tem letra maiúscula (VC)
  - ✅ Tem letra minúscula (oceonsegue)
  - ✅ Tem número (2023)
  - ✅ _E tem caracter especial, caso você consiga validar (@!)_
