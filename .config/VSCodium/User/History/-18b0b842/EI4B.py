def last_digit_of_power_tower(base, height):
    # cycle length for mod 10 with base 3 is 4
    cycle = 4
    exponent_mod = pow(base, height-1, cycle)
    if exponent_mod == 0:
        exponent_mod = cycle
    return pow(base, exponent_mod, 10)

print(last_digit_of_power_tower(3, 1000))