import Mathlib
import LAMR



--First example in the text book ∑i , i to n = n*(n+1)/2
def sum_up_to_recursive : Nat → Nat
 | .zero => .zero
 | .succ n =>  .succ n + sum_up_to_recursive n

--Property
def sum_up_to_property (n: Nat) : Nat :=
    n *(n+1)/2

#eval sum_up_to_recursive 10 = sum_up_to_property 10 -- Sanity Check
-- prove it with induction
example (n:Nat) : 2*sum_up_to_recursive n = n * .succ n := by
  induction n with
  | zero =>
      rw[sum_up_to_recursive]
  | succ n ih =>
      rw[sum_up_to_recursive, mul_add, ih, Nat.succ_eq_add_one, Nat.succ_eq_add_one]
      ring

-- Second example in the textbook ∑i where i is odd and i 0-> n , ( n + 1)*2
def sum_up_to_odd : Nat → Nat
 | Nat.zero => 1
 | Nat.succ n => sum_up_to_odd (n) + (2*Nat.succ n +1)

def sum_up_to_odd_property (n:Nat) : Nat :=
  (n+1)^2

--Sanity Check

#eval sum_up_to_odd 10 = sum_up_to_odd_property 10

-- proof

example(n:Nat) : sum_up_to_odd n = (n+1)^2 := by
  induction n with
  | zero =>
    rw[sum_up_to_odd]
    rfl
  | succ n ih =>
    rw[sum_up_to_odd, ih, Nat.succ_eq_add_one, mul_add]
    ring

-- Identity involving the factorial function

def recursive_fac_id : Nat → Nat
  | .zero => .zero
  | .succ n => recursive_fac_id n + .succ n+1 * .factorial n+1

def fac_id_property (n:Nat) : Nat :=
  .factorial n+1 - 1

-- sanity check
#eval recursive_fac_id 4 = fac_id_property 4

-- proof

example(n:Nat) : recursive_fac_id n = .factorial (n+1) -1 := by
  induction n with
  | zero =>
    rw[recursive_fac_id, Nat.factorial, Nat.succ_eq_add_one, Nat.factorial]
  | succ n ih =>
    rw[recursive_fac_id, Nat.factorial]
