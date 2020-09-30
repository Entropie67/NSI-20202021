import time


def fib(n) :
  if n < 2 :
    return n
  else :
    return fib(n-1)+fib(n-2)

def fib_mem(n):
  mem = [0] * (n+1)  #permet de créer un tableau contenant n+1 zéro
  return fib_mem_c(n, mem)

def fib_mem_c(n, m):
  if n == 0 or n == 1:
    m[n] = n
    return n
  elif m[n] > 0:
    return m[n]
  else:
    m[n] = fib_mem_c(n-1, m) + fib_mem_c(n-2, m)
    return m[n]

start = time.perf_counter()
print(fib_mem(25))
end = time.perf_counter()
print(f"Temps : {end - start}")
start = time.perf_counter()
print(fib(25))
end = time.perf_counter()
print(f"Temps : {end - start}")