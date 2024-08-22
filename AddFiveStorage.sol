// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

//Here we use Inheritance concept

import{SimpleStorage} from "./SimpleStorage.sol";

contract AddFiveStorage is SimpleStorage {
    function store(uint256) public override {
        num = num + 5;
    }

}
