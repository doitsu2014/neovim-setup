
struct User {
    name: String,
    age: u32
}

fn main() {
    let user = User {
        name: String::from("John"),
        age: 32
    };

    println!("User name: {}", user.name);
    println!("User age: {}", user.age);
}
