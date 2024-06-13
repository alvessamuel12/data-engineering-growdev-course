lista = [0,0,1,1,1,0,0,4,4,4,5,5,1,1,1,1,1,1,0,0,5,5,6,6]

def contar_max_num_ocorrencias(lista, value):
    contador = 0
    max_until_now = 0
    for i in range(len(lista)):
        if i-1 < len(lista) and lista[i] == value:
            contador += 1
        else:
            if max_until_now < contador:
                max_until_now = contador
            contador = 0
    return max_until_now

# primeira_ocorrencia = lista.index(1)
# contar_num_ocorrencias(lista[primeira_ocorrencia:])
# 2, 5

print(contar_max_num_ocorrencias(lista, 1))
