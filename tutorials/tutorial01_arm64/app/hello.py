import sys


def add(a, b):
    return int(a)  + int(b) 


if __name__ == "__main__":
    m, n = sys.argv[1], sys.argv[2]
    k = add(m, n)
    print(k)
