fn recursive_reduce( n : u32 ) -> u32
{
    if n == 0 {
        return 0;
    } else {
        return n + recursive_reduce(n-1);
    }
} // recursive_reduce

fn recursive_reduce_odd( n: u32) -> u32
{
    if n == 0 {
        return 1;
    } else {
        return 2*n+1 + recursive_reduce_odd(n-1);
    }
}
fn main()
{
    let  sum : u32 = recursive_reduce(10);
    let  sum_odd : u32 = recursive_reduce_odd(4);
    println!("{}",sum);
    println!("{}",sum_odd);
} // rec
