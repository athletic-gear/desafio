
let validate = document.querySelector(".validate")

// array utilizado para a verificação (pode ser alterado para qualquer array de strings)
let arrayPassword = ["#forTe1","senhafraca", "Qu@s1", "Voce@Consegue!2023","#forTe2", "Te3@tes"]


let arraycontainer = document.querySelector(".array")
arraycontainer.textContent = arrayPassword.join(', ')
    

checkArray(arrayPassword)



// checa o array selecionado
function checkArray(array){

    for(i = 0; i < array.length; i++){
        checkPassword(array[i])
    }
}   


// Verifica o password usando o paramentro checkFor para retornar oque for necessario
function checkPassword(password){


    let verifyUpper = 0
    let verifyLower = 0
    let verifyNumber = 0
    let verifyEspecial = 0

    //validação 
    for(let i = 0; i < password.length; i++){


        if(password[i] == ' '){
            
        }else{
             
            //verifica se é um numero
            if(!isNaN(password[i])){
                verifyNumber = 1

            }else if(containsSpecialChars(password[i])){
                verifyEspecial = 1


            }else if(password[i].toUpperCase() == password[i]){
                verifyUpper = 1


            }else if(password[i].toLowerCase() == password[i]){
                verifyLower = 1
            }

        }
            
    }


    if(verifyEspecial + verifyLower + verifyNumber + verifyUpper == 4 && password.length >= 7){

        // exibe na tela as strings validas
        const validpass = document.createElement("p");
        validpass.textContent = password
        validate.appendChild(validpass)
  
    }


}


// verificar se o valor é um caracter especial ou não 
function containsSpecialChars(str) {
    const specialChars = /[`!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?~]/;
    return specialChars.test(str);
  }


/*


Todos são necessarios para o valor ser considerado uma senha forte
Password Forte

 >= 7 caracteres (7)
✅ Tem letra maiúscula (T)
✅ Tem letra minúscula (fore)
✅ Tem número (1)
✅ E tem caracter especial, caso você consiga validar (#)

*/