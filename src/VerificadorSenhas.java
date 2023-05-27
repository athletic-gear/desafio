public class VerificadorSenhas {
    public VerificadorSenhas() {
    }

    public static void main(String[] args) {
        String[] senhas = new String[]{"senha312", "@TesteSeNhAA7166!", "shasjhgf#1", "sEnHa789"};
        String[] var2 = senhas;
        int var3 = senhas.length;

        for(int var4 = 0; var4 < var3; ++var4) {
            String senha = var2[var4];
            if (verificarSenhaForte(senha)) {
                System.out.println("Senha forte: " + senha);
            }
        }

    }

    public static boolean verificarSenhaForte(String senha) {
        if (senha.length() < 7) {
            return false;
        } else {
            boolean possuiLetraMaiuscula = false;
            boolean possuiLetraMinuscula = false;
            boolean possuiCaracterEspecial = false;
            char[] var4 = senha.toCharArray();
            int var5 = var4.length;

            for(int var6 = 0; var6 < var5; ++var6) {
                char c = var4[var6];
                if (Character.isUpperCase(c)) {
                    possuiLetraMaiuscula = true;
                } else if (Character.isLowerCase(c)) {
                    possuiLetraMinuscula = true;
                } else if (!Character.isLetterOrDigit(c)) {
                    possuiCaracterEspecial = true;
                }
            }

            return possuiLetraMaiuscula && possuiLetraMinuscula && possuiCaracterEspecial;
        }
    }
}