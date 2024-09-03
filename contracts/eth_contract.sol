// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19; // solidity versions

contract SimpleStorage {

    // DATA TYPES IN SOLIDITY
    bool hasfavoriteNumber = true;
    uint256 myfavoriteNumber = 98;

    // uninitiazedNumber variable here gets initialized to 0 if no value is assigned
    uint256 uninitiazedNumber;
    int256 favoriteNumber1 = -78;
    string inputText = "Hi there";
    address myAddress = 0x84D2301e8115306aFC2793Fdf075b912A4CabfF1;
    
    // 'bytes32' & 'bytes' are different types of data types
    bytes32 favoriteBytes32 = "cat";

    // FUNCTIONS IN SOLIDITY
    // deployed contract address = 0xf8e81D47203A594245E36C48e151709F0C19fBe8
    function store(uint256 _favoriteNumber) public {
        myfavoriteNumber = _favoriteNumber;
    }
    
    // view, pure. getter functions are created when 'public' keyword is used 
    function retrieve() public view returns(uint256) {
        return myfavoriteNumber;
    }

    // ARRAYS AND STRUCTS
    uint256[] listOfFavoriteNumbers;

    struct Person {
        uint256 favoriteNumber; // index 0
        string name; // index 1
    }

    Person public manoj = Person({ favoriteNumber: 14, name: "Manoj" });
    Person public sam = Person({ favoriteNumber: 24, name: "Sam" });
    Person public raj = Person({ favoriteNumber: 44, name: "Raju" });

    // above method is a tedious task, so we create array/list to contain all the list
    // below is a dynamic array
    Person[] public listOfPeople;

    mapping(string => uint256) public nameToFavoriteNumber;

    // below is a static array
    Person[5] public listOfPeople1; 

    // function to add people to the dynamic array
    // calldata, memory, storage
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push( Person(_favoriteNumber, _name) );
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}