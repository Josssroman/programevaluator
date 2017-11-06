matr = []
menor = []
fila = 3
column = 3
columnm = column - 1
filax = fila - 1
counter_j = 0
vectorM = []
jj = 0
Mm = []

for indice in range(fila):
    matr.append(column*[0])

for indice in range(filax):
    menor.append(columnm*[0])

print("matrices generadas: {} y menor {} ".format(matr,menor))
for i in range(fila):
    for j in range(column):
        matr[i][j] = float(input("Ingrese un numero para el elemento de la matriz [{}],[{}]".format(i,j)))

print("matriz numerica: {}".format(matr))

for k in range(column):
    for i in range(1,filax):
        for j in range(column):
            if(counter_j == 0):
                jj = jj + 1
                continue
            elif(counter_j != j):
                menor[i-1][jj] = matr[i][j]
                jj = jj + 1
                print(menor)
        counter_j = counter_j + 1
    counter_j = 0
vectorM[k] = menor[i-1][j]
print(menor)
