fn diff(a: i64, b: i64) -> (u64, u64) {
    match integer::i64_diff(a, b) {
        Result::Ok(r) => (r, 0),
        Result::Err(r) => (r, 1),
    }
}

fn main() -> (
    (u64, u64), (u64, u64),
    (u64, u64), (u64, u64),
    (u64, u64), (u64, u64),
    (u64, u64), (u64, u64),
) {
    (
        diff(18, 1),
        diff(1, 18),
        diff(0, 9223372036854775807),
        diff(9223372036854775807, 0),
        diff(-18, 1),
        diff(1, -18),
        diff(0, -9223372036854775807),
        diff(-9223372036854775807, 0),
    )
}