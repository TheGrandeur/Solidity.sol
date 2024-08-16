// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24; //stating our latest version

contract SimpleStorage {
    uint256  num;//0

    struct Person {
        uint256 mynum;
        string name;
    }

    // dynamic array: arbitary number of entries or unfixed size of the array
    Person[] public listofpeople;//[]

    //Search the number by the given name using mapping 
    //Also all the default value of the name would be zero
    mapping(string => uint256) public SearchByName;

    function store(uint256 num1) public{
        num = num1;
        
    }
    // view, pure
    function readData() public view returns (uint256){
        return num;
    }
    // memory, calldata, storage : only use for structure, mapping, array and string not for uint or int
    function addPerson(uint256 _mynum, string memory _name) public{
        listofpeople.push(Person(_mynum,_name));
        SearchByName[_name]=_mynum;
    } 


    
}
