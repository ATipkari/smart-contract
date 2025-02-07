// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract Mapping {
    //mapping of single key => value pair
    mapping(uint => string) public names;

    //mapping of key with struct like database
    struct student {
        uint StdId;
        string name;
        string subject;
        uint rollNo;
    }
    mapping(uint => student) public studentData;

    //mapping nested mapping like address with student data
    mapping(address => mapping(uint => student)) public myData;

    constructor(){
        names[1] = "Atharv";
        names[2] = "Yash";
        names[3] = "jay";
    }


    //adding student data in studentData mapping
    function addStudentData(
        uint _id,
        uint _StdId,
        string memory _name,
        string memory _subject,
        uint _rollNo
    ) public {
        studentData[_id] = student(_StdId, _name, _subject, _rollNo);
    }

    // adding student data mapping from address of sender
    function addMyData(
        uint _id,
        uint _StdId,
        string memory _name,
        string memory _subject,
        uint _rollNo
    ) public {
        myData[msg.sender][_id] = student(_StdId, _name, _subject, _rollNo);
    }
}
