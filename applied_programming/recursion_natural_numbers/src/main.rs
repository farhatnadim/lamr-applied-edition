

fn recursive_reduce( n : u32 ) -> u32
{
    if n == 0 {
        return 0;
    } else {
        return n + recursive_reduce(n-1);
    }
}

fn main() {
    let  sum : u32 = recursive_reduce(10);
    println!("{}",sum);
}
