// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Vehicle {
    string brand;

    constructor(string memory _brand) {
        brand = _brand;
    }

    function description() public pure virtual returns (string memory) {
        return "I'm a Vehicle";
    } 
}