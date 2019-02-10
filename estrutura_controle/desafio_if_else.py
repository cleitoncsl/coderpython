#!/usr/bin/python3


def nota(valor):
        valor = nota
        if valor > 10:
                print('Nota Invalida')
        elif valor >= 9.1:
                print('Nota A')
        elif valor >= 8.1:
                print('Nota A-')
        elif valor >= 8.1:
                print('Nota B')
        elif valor >= 7.1:
                print('Nota B-')
        elif valor >= 6.1:
                print('Nota C')
        elif valor >= 5.1:
                print('Nota C-')
        elif valor >= 4.1:
                print('Nota D')
        elif valor >= 3.1:
                print('Nota D-')
        elif valor >= 2.1:
                print('Nota E')
        elif valor >= 1.1:
                print('Nota E-')
        else:
                print('Numero Inválido')



if __name__ == '__main__':
        vlr = input('Digite o Valor: ')
        rf = nota(vlr)
        print(rf)
else:
        print('erro')