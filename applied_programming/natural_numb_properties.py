'''This example implements the recursive reduce function.'''

def reduce_recursive(n: int) -> int :
    '''sum of I , i 0-> n == n*(n+1)/2'''
    if n == 0 :
        return 0
    else :
        return n + reduce_recursive(n-1)

def reduce_property( n : int ) -> int :
    return (n *(n+1))/2

reduce_recursive(10)
assert (reduce_property(10) == reduce_recursive(10)), "Couldn't validate"

def reduce_odd_recursive (n : int ) -> int :
    if n == 0:
        return 1
    else :
        return 2*n+1 + reduce_odd_recursive(n-1)

def reduce_odd_property(n :int ) -> int:

    return (n+1)**2


assert (reduce_odd_property(4) == reduce_odd_recursive(4)), "Couldn't validate"