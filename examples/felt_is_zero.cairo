fn mul_if_not_zero(a: felt252) -> felt252 {
    match a {
        0 => 0,
        _ => a * 2,
    }
}

fn main() -> felt252 {
    mul_if_not_zero(2)
}
