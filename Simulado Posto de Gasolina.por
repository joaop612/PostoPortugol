programa {
  funcao inicio() {

    //declaraçao de variaveis
    cadeia combustivel, formaPagamento
    real quantidadeLitros, gasolina, diesel, alcool, acumuladorLitrosGasolina = 0, acumuladorLitrosDiesel = 0, acumuladorLitrosAlcool = 0, lucroTotal
    inteiro acumuladorGasolina = 0, acumuladorDiesel = 0, acumuladorAlcool = 0, acumuladorPix = 0

    //coleta de dados

    enquanto(combustivel != 0){//inicio enquanto
      escreva("Ola, qual será o tipo de combustivel? ")
      leia(combustivel)
      escreva("Quantos litros? ")
      leia(quantidadeLitros)
      escreva("Qual forma de pagamento? ")
      leia(formaPagamento)

      //processamento de daods
      se(combustivel == "gasolina" ou combustivel == "Gasolina"){
       acumuladorGasolina++
       acumuladorLitrosGasolina = acumuladorLitrosGasolina + quantidadeLitros
      }
      se(combustivel == "diesel" ou combustivel == "Diesel"){
       acumuladorDiesel++
       acumuladorLitrosDiesel = acumuladorLitrosDiesel + quantidadeLitros
      }
      se(combustivel == "alcool" ou combustivel == "Alcool"){
       acumuladorAlcool++
       acumuladorLitrosAlcool = acumuladorLitrosAlcool + quantidadeLitros
      }
      se(formaPagamento == "pix" ou formaPagamento == "Pix" ou formaPagamento == "pIx" ou formaPagamento == "PiX" ou formaPagamento == "PIX" ou formaPagamento == "PIx"){
        acumuladorPix++
      }

    }//fim enquanto
    limpa()

    //calculos
    gasolina = acumuladorLitrosGasolina * 5.50
    alcool = acumuladorLitrosAlcool * 4.50
    diesel = acumuladorLitrosDiesel * 6.00

    lucroTotal = gasolina + diesel + alcool

    //saida de dados letra "A"
    escreva("=============================================================\n")
    escreva("A quatidade de gasolina do dia foi de: ", acumuladorGasolina, "\n")
    escreva("A quatidade de diesel do dia foi de: ", acumuladorDiesel, "\n")
    escreva("A quatidade de alcool do dia foi de: ", acumuladorAlcool, "\n")
    
    //saida de dados letra "B"
    escreva("\n=============================================================\n")
    escreva("A quantidade de pagamentos no PIX do dia é de: ", acumuladorPix, "\n")

    //saida de dados letra "C"
    escreva("\n=============================================================\n")
    escreva("O total recebido de gasolina no dia é de: ", gasolina, "\n")
    escreva("O total recebido de diesel no dia é de: ", diesel, "\n")
    escreva("O total recebido de alcool no dia é de: ", alcool, "\n")    
    escreva("O lucro total recebido no dia foi de: ", lucroTotal)
  }
}
