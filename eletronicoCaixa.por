programa

{

 

    real saldo = 150.00// Float
    inteiro senha_correta = 3589
    inteiro opcao
    cadeia nome



  funcao inicio()

{


    escreva("=== CAIXA ELETRÔNICO ===\n\n")



    escreva("Seja bem vindo, por favor informe seu nome: ")

    leia(nome)

    escreva("\n")



    menu()

}

funcao menu() {

    escreva("Olá ", nome, " é um prazer ter você aqui!\n\n")

 

    escreva("\n--- MENU PRINCIPAL ---\n")

    escreva("1. Saldo\n")

    escreva("2. Extrato\n")

    escreva("3. Saque\n")

    escreva("4. Depósito\n")

    escreva("5. Transferência\n")

    escreva("6. Sair\n")

    escreva("Escolha uma opção: ")

    leia(opcao)



    escolha (opcao){



      caso 1:

          verSaldo()

          pare

      caso 2:

          verExtrato()

          pare

      caso 3:

          fazerSaque()  

          pare

      caso 4:

          fazerDeposito()  

          pare

      caso 5:

          fazerTransferencia()

          pare

      caso 6:

          sair()    

          pare

      caso contrario:

      erro()

        }



  }

  funcao logico validarSenha(){

    inteiro senha_digitada

    escreva("Digite sua senha: ")

    leia(senha_digitada)



    se(senha_digitada == senha_correta){

      retorne verdadeiro

    }

    senao {

      escreva("Senha incorreta! Tente novamente.\n")

      retorne falso

    }

  }



  funcao verSaldo(){

    se (validarSenha()){

      escreva("Seu saldo atual é: R$ ", saldo, "\n")

      }

      menu()

  }



  funcao verExtrato(){

    se(validarSenha()) {

      escreva("\n--- EXTRATO ---")

      escreva("\nAssinatura Spotify: R$ 12,50")

      escreva("\nCompra Silent Hill F: R$50,00")

      escreva("\nCompra Korea Mart: R$ 34,90")

      escreva("\nSaldo atual: R$ ", saldo, "\n")

    }

    menu()

  }

 

funcao fazerSaque()

{

  se(validarSenha()) {

    real valor_saque

    escreva("Qual valor para saque? ")

    leia(valor_saque)



    se(valor_saque <= 0 ou valor_saque > saldo){

      escreva("Operação não autorizada.\n")

    }

    senao {

      saldo = saldo - valor_saque

      escreva("Saque realizado com sucesso!\n")

    }
    }

    menu()

  }

  funcao fazerDeposito(){

    real valor_deposito

    escreva("Qual valor para depósito? ")

    leia(valor_deposito)



    se (valor_deposito <= 0){

      escreva("Operação não autorizada.\n")

    }

    senao{

      saldo = saldo + valor_deposito

      escreva("Depósito realizado! Novo saldo: R$ ", saldo, "\n")

    }

    menu()

  }

  funcao fazerTransferencia(){

    se (validarSenha()){

      inteiro conta

      real valor_transf



      escreva("Digite o número da conta de destino: ")

      leia(conta)

      escreva("Digite o valor da transferência: ")

      leia(valor_transf)



      se (valor_transf <= 0 ou valor_transf > saldo){

        escreva("Operação não autorizada.\n")

      }

      senao{

        saldo = saldo - valor_transf

        escreva("Transferência de R$ ", valor_transf, "para a conta", conta, "realizada!\n")

      }

    }

    menu()

  }

  funcao erro(){

    escreva("Opção Inválida. Por favor escolha entre 1 e 6.\n")

    menu()

  }

  funcao sair(){

    escreva(nome, ", foi um prazer ter você aqui! Até logo.\n")

  }

}