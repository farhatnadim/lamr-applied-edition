import Mathlib
import LAMR
--My own implementation of Recursion
def sum_up_to_recursive : Nat → Nat
 | .zero => .zero
 | .succ n =>  .succ n + sum_up_to_recursive n

--Property
def sum_up_to_property (n: Nat) : Nat :=
  n *(n+1)/2

 #eval sum_up_to_recursive 5 = sum_up_to_property 5


-- from the textbook
def sum_up_to : Nat → Nat
  | 0 => 0
  | (n+1) => (n+1) + sum_up_to n

-- prove it with induction

example (n:Nat) : 2*sum_up_to_recursive n = n * .succ n := by
  induction n with
  | zero =>
      rw[sum_up_to_recursive]
  | succ n ih =>
      rw[sum_up_to_recursive, mul_add, ih, Nat.succ_eq_add_one, Nat.succ_eq_add_one]
      ring



def reduce_recursive_odd : Nat → Nat
 | Nat.zero => 1
 | Nat.succ n => reduce_recursive_odd (n) + (2*Nat.succ n +1)

#eval reduce_recursive_odd 4
