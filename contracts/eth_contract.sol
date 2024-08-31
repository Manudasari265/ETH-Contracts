// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19; // solidity versions

contract SimpleStorage {
    bool hasfavoriteNumber = true;
    uint256 favoriteNumber = 98;

    // uninitiazedNumber variable here gets initialized to 0 if no value is assigned
    uint256 uninitiazedNumber;
    int256 favoriteNumber1 = -78;
    string inputText = "Hi there";
    address myAddress = 0x84D2301e8115306aFC2793Fdf075b912A4CabfF1;
    
    // 'bytes32' & 'bytes' are different types of data types
    bytes32 favoriteBytes32 = "cat";
}