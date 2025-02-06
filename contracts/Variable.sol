// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract Variable {
    // All Integers
    uint public myInt = 0;
    uint256 public myInt256 = 0;
    int256 public mySignedInt = 1;

    // All Strings
    string public myString = "Atharv";
    bytes32 public myBytes = "Hello, Atharv";

    // address 
    address public myAddress = 0x14661E9e69Bb3f44ccc6929C1507588880C3bceA;

    // derived data type same like an object 

    struct  MyStruct {
        uint _id;
        string name;
        uint age;
    } 

    MyStruct public userDate = MyStruct(1, "Atharv Tipkari", 23);

}