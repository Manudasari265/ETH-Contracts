// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19; // solidity versions

contract SimpleStorage {

    // DATA TYPES IN SOLIDITY
    bool hasfavoriteNumber = true;
    uint256 public favoriteNumber = 98;

    // uninitiazedNumber variable here gets initialized to 0 if no value is assigned
    uint256 uninitiazedNumber;
    int256 favoriteNumber1 = -78;
    string inputText = "Hi there";
    address myAddress = 0x84D2301e8115306aFC2793Fdf075b912A4CabfF1;
    
    // 'bytes32' & 'bytes' are different types of data types
    bytes32 favoriteBytes32 = "cat";


    // deployed contract address = 0xf8e81D47203A594245E36C48e151709F0C19fBe8
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }
    
    // view pure 
    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }
}