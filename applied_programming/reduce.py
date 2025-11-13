'''This example implements the recursive reduce function.'''


def reduce_recursive(n: int) -> int :
    if n == 0 :
        return 0
    else :
        return n + reduce_recursive(n-1) 
    


def reduce_property( n : int ) -> int :
    return (n *(n+1))/2
         

accumulator = 0
reduce_recursive(10)
assert (reduce_property(10) == reduce_recursive(10)), "Couldn't validate"