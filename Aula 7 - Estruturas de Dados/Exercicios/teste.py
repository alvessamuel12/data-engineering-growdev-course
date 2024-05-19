def get_ocurrence_positions(num, num_list):
    positions = []
    for i, item in enumerate(num_list):
        if item == num:
            positions.append(i)
    return positions

x = 77
is_in_list = x in num_list
if is_in_list:
    print(f'O valor {x} está na lista!')
    number_of_occurrences = num_list.count(x)
    num_occurrences_str = f"{number_of_occurrences} {'vez' if number_of_occurrences == 1 else 'vezes'}"
    positions = get_ocurrence_positions(x, num_list)
    positions_str = f"{f'na posição {positions}' if len(positions) == 1 else f'nas posições {positions}'}"
    print(f'Ele aparece {num_occurrences_str} {positions_str}')
else:
    print(f'O valor {x} não está na lista!')