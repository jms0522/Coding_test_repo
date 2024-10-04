N = int(input())

def f_recursive(N):
    if N == 0:
        return 1
    return N * f_recursive(N - 1)

print(f_recursive(N))