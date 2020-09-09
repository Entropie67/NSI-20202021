
def puissance(x: float, n: int) -> float:
    """
        x puissance n, version récursive
        :param x: Le nombre dont on veut la puisance
        :param n: exposant
        :type x: float
        :type n: int
        :return: résultat de x puissance n
        :rtype: float
    """
    if n == 0:
        return 1
    else:
        return x * puissance(x, n-1)

def fibonnacci(n: int) -> int:

    if n == 0:
        return 0
    elif n == 1:
        return 1
    else:
        return fibonnacci(n - 1) + fibonnacci(n - 2)

def facto(n: int) -> int:

    if n == 0:
        return 1
    else:
        return n * facto(n - 1)

def syracuse(n: int) -> None:

    print(n)
    if n == 2:
        print(1)
    elif n%2 == 0:
        syracuse(n//2)
    else:
        syracuse(3*n + 1)

def c(n: int, p: int) -> int:
    if p == 0 or n == p:
        return 1
    else:
        return c(n-1, p-1) + c(n-1, p)

for i in range(12):
    for j in range(i):
        print(c(i, j), end=" ")
    print(1)