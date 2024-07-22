// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract getMapping {
    // mapping from address to uint 
    mapping(address => uint256) public myMap;

    function getValue(address addr) public view returns (uint256) {
        return myMap[addr];
    }

    // function getMap() public view returns (mapping(address=>uint256) memory) {
    //     return myMap;
    // }

    function setValue(address addr, uint256 value) public {
        myMap[addr] = value;
    }

    function delValue(address addr) public {
        delete myMap[addr];
    }
}