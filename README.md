# Cryptographic Hashing Program

## Overview

This project is a powerful implementation of a variety of cryptographic hashing algorithms using the [Leo](https://developer.aleo.org/leo/language) programming language from the [Aleo](https://aleo.org) project. It provides a robust and flexible solution for hashing numeric values with state-of-the-art cryptographic security. The suite of hashing methods includes:

- BHP (Bowe-Hopwood-Pedersen) Hashes: BHP256, BHP512, BHP768, BHP1024
- Pedersen Hashes: Pedersen64, Pedersen128
- Poseidon Hashes: Poseidon2, Poseidon4, Poseidon8
- Keccak Hashes: Keccak256, Keccak384, Keccak512
- SHA3 Hashes: SHA3_256, SHA3_384, SHA3_512

Each hashing algorithm is identified by a unique ID, which must be passed as a parameter (`method`) when invoking the program. This feature allows users to easily select and switch between different hashing algorithms to meet their specific requirements.

This project serves as an important tool in the field of cryptography, providing developers and researchers with a means to securely hash numerical data. The availability of multiple hashing algorithms ensures that users can choose the most suitable level of security and performance for their applications.

### Hashing Algorithm IDs

Each algorithm is associated with a unique ID to be used with the `method` parameter:

| Algorithm    | ID  |
| ------------ | --- |
| BHP256       | 0   |
| BHP512       | 1   |
| BHP768       | 2   |
| BHP1024      | 3   |
| Keccak256    | 4   |
| Keccak384    | 5   |
| Keccak512    | 6   |
| Pedersen64   | 7   |
| Pedersen128  | 8   |
| Poseidon2    | 9   |
| Poseidon4    | 10  |
| Poseidon8    | 11  |
| SHA3_256     | 12  |
| SHA3_384     | 13  |
| SHA3_512     | 14  |

### Special Considerations

- **Pedersen64** supports a maximum number value of `i32`, thus any `i128` values will be automatically cast to `i32` when using this algorithm.
- **Pedersen128** supports a maximum number value of `i64`, requiring `i128` values to be cast to `i64` accordingly.
- The choice of `i128` for the number type is intended for maximum flexibility, allowing users to hash large numbers without facing type limitations.

## Execution Guide

To run the program and perform hashing, execute the following command:

```
leo execute hash <value>i128 <method>i8
```

Replace `<value>` with the numerical value you wish to hash and `<method>` with the ID corresponding to the hashing algorithm you choose to use.

## Program Code

The core functionality of the hashing program is encapsulated in the `hash` transition within the `src/main.leo` file. This function takes a numeric value and a method ID as input and returns the hashed output as a field element.
