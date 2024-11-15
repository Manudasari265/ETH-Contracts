// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

contract ENS {
    mapping(address => string) public users;

    constructor() {

    }

    function signUp(string memory userName) public {
        users[msg.sender] = userName;
    } 

    function getName() public view returns (string memory) {
        return users[msg.sender];
    }
}