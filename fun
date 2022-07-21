#!/usr/bin/python3

from sys import argv, exit
from math import sqrt
from fractions import Fraction
from unicodedata import name


def solve_function():
    try:
        a = int(argv[1])
        b = int(argv[2])
        c = int(argv[3])
    except:
        print("BAD USAGE!")
        exit(9)

    if b**2 - 4 * a * c < 0:
        print("方程没有根")
    else:
        x1 = (-b + (b**2 - 4 * a * c) ** 0.5) / (2 * a)
        x2 = (-b - (b**2 - 4 * a * c) ** 0.5) / (2 * a)
        x1 = str(Fraction(x1))
        x2 = str(Fraction(x2))
    if x1 == x2:
        print("方程只有一个实根，x=%s" % x1)
    else:
        print("方程只有两个实根，x1=%s,x2=%s" % (x1, x2))


solve_function()
