// FEITO PRO GABRIEL SIRIANI - 29/05/2023 - Desafio Athletic Gear
// CONTATO: gabrielsiriani19@gmail.com
// Portofólio: https://gabrielsiriani.com/

// Array de senhas com valores pré-definidos
const password = ['123456', '!SenhaFort3', '!senhaa', '@athletic1A', '1234567', '!@345', '!@34567Aa'];

// Vars referenciando os id's de divs no HTML
var containerFortes = document.getElementById("fortes");
var containerFracas = document.getElementById("fracas");

// Função de Validação de senha
function validarSenha(senha) {

    // Condições (mais podem ser adicionadas posteriormente)
    let MinChar = /.{6,}/.test(senha);
    let contemMaiuscula = /[A-Z]{1,}/.test(senha);
    let contemMinuscula = /[a-z]{1,}/.test(senha);
    let contemNumero = /[0-9]{1,}/.test(senha);
    let contemEspecial = /\W|_/.test(senha);

    // Teste de condição de Senha (Não é necessário o '== true', mas gosto de usar para melhor legibilidade)
    if (MinChar == true && contemMaiuscula == true && contemMinuscula == true && contemNumero == true && contemEspecial == true) {

        // Escreve no console as senhas fortes
        console.log('Senha Forte: ' + senha)

        // Escreve no DOM as senhas FORTES
        var tagRes = document.createElement("p");
        tagRes.style.fontWeight = "bold"
        tagRes.textContent = 'Senha FORTE: ' + senha;
        containerFortes.appendChild(tagRes);
    }
    else {
        // Escreve no console as senhas fortes
        console.log('Senha Fraca: ' + senha)

        // Escreve no DOM as senhas FRACAS
        var tagRes = document.createElement("p");
        tagRes.textContent = 'Senha Fraca: ' + senha;
        containerFracas.appendChild(tagRes);
    }
}

// Executa a função de validação em cada elemnto pré-definido do array
password.forEach(validarSenha);


// Referenciam aos inputs de adicionar mais senhas ao array 'passwords'
var inputSenha = document.getElementById("inputSenha");
var inputAdicionar = document.getElementById("botaoAdicionar");

// Função de adicionar senhas ao array ao clicar no input button
inputAdicionar.addEventListener("click", function () {
    var novaSenha = inputSenha.value;
    // Empurra/Adiciona o novo elemento no array
    password.push(novaSenha);

    // Executa a validação de senha para o novo elemento adicionado ao array
    validarSenha(novaSenha);
    // Imprime o array atualizado no console
    console.log(password);
});

// Consulta:
// https://www.w3schools.com/js/js_arrays.asp
// https://www.w3schools.com/jsref/jsref_foreach.asp
// https://developer.mozilla.org/pt-BR/docs/Web/API/Document/createElement
// https://www.w3schools.com/jsref/prop_node_textcontent.asp
// https://www.w3schools.com/jsref/jsref_push.asp
// https://www.w3schools.com/jsref/met_document_createelement.asp
// https://www.w3schools.com/jsref/met_node_appendchild.asp
// https://pt.stackoverflow.com/questions/316987/validar-for%C3%A7a-da-senha-no-front-end


// FEITO PRO GABRIEL SIRIANI - 29/05/2023
// CONTATO: gabrielsiriani19@gmail.com
// Portofólio: https://gabrielsiriani.com/