//Python3 solution:

def solve(a0, a1, a2, b0, b1, b2):
    # Complete this function
    a = (1 if a0 > b0 else 0) + (1 if a1 > b1 else 0) + (1 if a2 > b2 else 0)
    b = (1 if a0 < b0 else 0) + (1 if a1 < b1 else 0) + (1 if a2 < b2 else 0)
    return (a,b)


//Another solution:

a0,a1,a2 = map(int, input().split())
b0,b1,b2 = map(int, input().split())
print((a0 > b0) + (a1 > b1) + (a2 > b2), (a0 < b0) + (a1 < b1) + (a2 < b2))
