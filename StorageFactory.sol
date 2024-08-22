// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory{

    //unit256 public favouriteNumber
    //contract            variable name
    SimpleStorage[] public listofSimpleStorageContracts;
    // address[] public listofStorageAddresses;
    
    function createSimpleStorageContract() public{
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        listofSimpleStorageContracts.push(newSimpleStorageContract);

    }
    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
        //Address and ABI- Application Binary Interface
        SimpleStorage mySimpleStorage = listofSimpleStorageContracts[_simpleStorageIndex];
        mySimpleStorage.store(_newSimpleStorageNumber);

    }
    function sfGet(uint _simpleStorageIndex) public view returns(uint256){
        return listofSimpleStorageContracts[_simpleStorageIndex].readData();
    }
}
