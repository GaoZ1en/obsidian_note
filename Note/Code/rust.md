## cargo

cargo is the rust package manager. It is used to build, run, and test rust projects.

```bash
cargo init new_project # create a new project
cargo build # build the project
cargo run # run the project
cargo doc --open # generate the documentation and open them in the browser
cargo update # update the dependencies
cargo install # install a binary
cargo uninstall # uninstall a binary
cargo search # search for a crate
cargo add # add a dependency
```

while creating a new project, cargo creates a `Cargo.toml` file which contains the metadata of the project and the dependencies. The `src` directory contains the source code of the project. The `target` directory contains the compiled code. The `Cargo.lock` file contains the exact version of the dependencies used.

## specific libraries

### std

### rand

## 
可以使用match匹配来处理错误

也可以使用match替代if简化代码

```rust
let result = match x {
    0 => "zero",
    1 => "one",
    _ => "many",
};
```
## rustup

