#include <iostream>
#include <vector>
#include <string>
#include <cctype>

int main()
{
    std::vector<std::string> Senhas {"#forTe1", "senhafraca", "Qu@s1", "Voce@Consegue!2023"};

    for(uint16_t i = 0; i < Senhas.size(); i++)
    {
        const std::string Senha = Senhas[i];
        uint16_t QuantidadeMaiusculo = 0;
        uint16_t QuantidadeMinusculo = 0;
        uint16_t QuantidadeNumero = 0;
        uint16_t QuantidadeCaractere = 0;
        uint16_t TamanhoSenha = Senha.size();

        for(char Elemento : Senha)
        {
            if(isupper(Elemento))
                QuantidadeMaiusculo++;
            if(islower(Elemento))
                QuantidadeMinusculo++;
            if(isdigit(Elemento))
                QuantidadeNumero++;
            if(Elemento != isdigit(Elemento) && Elemento != isalpha(Elemento))
                QuantidadeCaractere++;
        }

        if(TamanhoSenha >= 7 && QuantidadeCaractere >= 1 && QuantidadeMaiusculo >= 1 && QuantidadeMinusculo >= 1)
                std::cout << Senha << " e uma senha forte!" << '\n';
    }
    system("pause");
    return 0;
}
