''' 
multilinha 
comentario
aqui
'''
a = 10 
b = 2
val1 = 123456
val2 = "sopa de ....."
val3 = 123.123

print("\n")

# operadores logicos
print(a == b) # vc ja sabe oq eh
print(a != b) # vc ja sabe oq eh
print(a < b)  # vc ja sabe oq eh
print(a >= b) # vc ja sabe oq eh
print(a <= b) # vc ja sabe oq eh

print("\n")

# maths
print(a**b)           # pot 
print(a**(a + b))     # pot e parentss
print(a**(a + b) % 7) #pot e mod

print("\n")

#alguns tipos
print(type(val1)) # diz tipo da var
print(type(val2)) # diz tipo da var
print(type(val3)) # diz tipo da var
print(type(a))    # diz tipo da var
print(type(b))    # diz tipo da var

print("\n")

#strings
palavra = 'tecnologicamente_avancada' # strigs sao objetos em python
print(palavra[0]) # podem ser acessadas as letras desta forma
print(palavra[1]) # de veras
print(palavra[2]) # muito
print(palavra[3]) # tecnologicamente avancada
print(palavra[4])
print(2 * palavra[5])  # 2x oq esta na pos 5
print(palavra[5:10])   # aquilo que estra entre a pos 5 e 10
print(palavra[:10])    # aquilo que vem antes da pos 10
print(palavra[10:])    # aquilo que ve dps da pos 10
print(palavra[1:10:2]) # entre pos 1 e 10 com increento de 2 
print(palavra[15::-1]) # da pos 15 pra baixo, ao contrario

print("\n")

#listas
lista = [1, 2, 3, 4, 5, 6, 7, 8, 9]
print(type(lista))
print(lista[0] + lista[1]) # soma, para elementos dentro das listas
lista = lista + [0, 1, 2, 3] # juntar listas
print(lista)
print(lista[-1]) # ultimo endereco
print(lista[-2]) # penultimo endereco, etc...
''' CONTINUAR LISTAS '''