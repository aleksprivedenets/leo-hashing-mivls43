program hashing.aleo {
    /* 
    BHP256::hash_to_destination	        256-bit input BHP hash
    BHP512::hash_to_destination	        512-bit input BHP hash
    BHP768::hash_to_destination	        768-bit input BHP hash
    BHP1024::hash_to_destination	    1024-bit input BHP hash
    Keccak256::hash_to_destination	    256-bit input Keccak hash
    Keccak384::hash_to_destination	    384-bit input Keccak hash
    Keccak512::Hash_to_destination	    512-bit input Keccak hash
    Pedersen64::hash_to_destination	    64-bit input Pedersen hash
    Pedersen128::hash_to_destination	128-bit input Pedersen hash
    Pedersen128::hash_to_destination	128-bit input Pedersen hash
    Poseidon2::hash_to_destination	    Poseidon hash with input rate 2
    Poseidon4::hash_to_destination	    Poseidon hash with input rate 4
    Poseidon8::hash_to_destination	    Poseidon hash with input rate 8
    SHA3_256::hash_to_destination	    256-bit input SHA3 hash
    SHA3_384::hash_to_destination	    384-bit input SHA3 hash
    SHA3_512::hash_to_destination	    512-bit input SHA3 hash
    */
    transition hash(public value: i128, method: u8) -> field {
        assert(method <= 14u8); // TODO: change
        if method == 0u8 {
            return BHP256::hash_to_field(value);
        }
        else if method == 1u8 {
            return BHP512::hash_to_field(value);
        }
        else if method == 2u8 {
            return BHP768::hash_to_field(value);
        }
        else if method == 3u8 {
            return BHP1024::hash_to_field(value);
        }
        else if method == 4u8 {
            return Keccak256::hash_to_field(value);
        }
        else if method == 5u8 {
            return Keccak384::hash_to_field(value);
        }
        else if method == 6u8 {
            return Keccak512::hash_to_field(value);
        }
        else if method == 7u8 {
            return Pedersen64::hash_to_field(value as i32);
        }
        else if method == 8u8 {
            return Pedersen128::hash_to_field(value as i64);
        }
        else if method == 9u8 {
            return Poseidon2::hash_to_field(value);
        }
        else if method == 10u8 {
            return Poseidon4::hash_to_field(value);
        }
        else if method == 11u8 {
            return Poseidon8::hash_to_field(value);
        }
        else if method == 12u8 {
            return SHA3_256::hash_to_field(value);
        }
        else if method == 13u8 {
            return SHA3_384::hash_to_field(value);
        }
        else if method == 14u8 {
            return SHA3_512::hash_to_field(value);
        }
        else {
            return 0field;
        }
    }
}
