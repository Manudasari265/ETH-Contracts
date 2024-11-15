// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

import './Vehicle.sol';

contract Truck is Vehicle {
    uint numWheels;

    constructor(string memory _brand, uint _numWheels) Vehicle(_brand) {
        numWheels = _numWheels;
    }

    function description() public pure override returns (string memory) {
        return "I'm a Truck-Kun";
    } 
}