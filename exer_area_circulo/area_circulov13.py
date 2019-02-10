#!/usr/bin/python3
from math import pi
import sys


def help():
    print("É necessário informar o raio do círculo.")
    print("Sintaxe: {} <raio>".format(sys.argv[0][36:]))


def circulo(raio):
    return pi * float(raio) ** 2


if __name__ == '__main__':
    if len(sys.argv) < 2:
        help()
    elif not sys.argv[1].isnumeric():
        help()
        print('O raio deve ser valor numérico')
    else:
        raio = sys.argv[1]
        area = circulo(raio)
        print('Área do Círculo', area)
