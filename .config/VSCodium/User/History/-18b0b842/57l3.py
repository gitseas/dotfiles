from sympy import lcm
from sympy.ntheory import carmichael

def tower_mod(height, mod):
    if height == 1:
        return 3 % mod
    lam = carmichael(mod)
    exp = tower_mod(height - 1, lam)
    return pow(3, exp, mod)