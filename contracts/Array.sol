// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract Array {
    uint256[] public myArray = [1, 2, 3, 4, 5];
    string[]  public  myStringArray = ["Apple", "mango", "Banana"];
    string[] public newArray;

    function updateArray(string memory _value) public {
        newArray.push(_value);
    }

    function countLength() public view returns (uint256) {
        return newArray.length;
    }
}
