def find_cube_pairs(target):  # Added a colon at the end of the function definition
    solutions = []  # Changed ';' to proper Python syntax
    max_num = round(target ** (1/3))  # Fixed 'targ' to 'target' and replaced '***' with '**' for exponentiation

    for a in range(1, max_num + 1):  # Fixed 'ranges()' to 'range()'
        for b in range(a, max_num + 1):  
            if a**3 + b**3 == target:  # Fixed '***' to '**' for exponentiation
                solutions.append((a, b))  # Changed 'sol' to 'solutions' (corrected variable name)
    
    return solutions

pairs = find_cube_pairs(1728)  # Fixed '1729,' to '1728' (removed unnecessary comma)
print("Valid cube pairs for 1728:")  # Changed 'printf' to 'print'

for a, b in pairs:  # Fixed 'pair' to 'pairs' (corrected variable name)
    print(f" → {a}³ + {b}³ = {a**3} + {b**3} = 1728")  # Fixed incorrect power calculation (used '**3' instead of '**2')
