// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Sum {
    uint8 num1;
    uint16 num2;
    uint32 num3;
    uint128 num4;
    int negativeNumber = -2345;
    bool isActive = true;

    uint256 currentValue;
    
    constructor(uint256 _initialValue) {
        currentValue = _initialValue;
    }
}

contract Calculator {
    uint num = 0;

    constructor(uint _initialData) {
        num = _initialData;
    }

    function add(uint _value) public {
        num += _value;
    }

    function getValue() public view returns (uint) {
        return num;
    }

    function sub(uint _value) public {
        num -= _value;
    }

    function mul(uint _value) public {
        num *= _value;
    }

    function div(uint _value) public {
        require(_value != 0, "value shouldn't be 0");
        num /= _value;
    }

    
}