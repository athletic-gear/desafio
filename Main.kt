const val specialChars = "~`!@#$%^&*()-_=+\\|[{]};:'\",<.>/?"

fun main(args: Array<String>) {

    val passwordArray = arrayOf("1234567", "senhaSimples", "s3nhaM3d1a", "#s3nh4fort3", "@S3nh4Id34al")

    for(password in passwordArray){
        if (password.length >= 7) {
            checkCharacters(password)
        }
    }
}

fun checkCharacters(password: String){

    var character: Char
    var capital = false
    var number = false
    var lowerCase = false
    var special = false

    for((index) in password.withIndex()){
        character = password[index]
        if(Character.isDigit(character)){
            number = true
        }
        else if(Character.isLowerCase(character)){
            lowerCase = true
        }
        else if(Character.isUpperCase(character)){
            capital = true
        }
        else if(specialChars.contains(character)){
            special = true
        }
    }

    if(number && lowerCase && capital && special){
        println(password)
    }
}
