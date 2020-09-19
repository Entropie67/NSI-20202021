
t = [1, 3, 7, 5, 8, 5, 13, 7, 7, 3, 8]

def nb_occurences(tab, n):
    nb = 0
    for i in range(len(tab)):
        if tab[i] == n:
            nb += 1
    return nb

def nb_occurences_v2(tab, n):
    nb = 0
    for element in tab:
        if element == n:
            nb += 1
    return nb

print(nb_occurences(t, 7))

def max2(tab):
    max  = tab[0]
    for elt in tab:
        if elt > max:
            max = elt
    return max

print(max2(t))
