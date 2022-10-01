// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract NestedMapping {

    mapping(address => mapping(uint=>bool)) public nestedMap;

    function get(uint num, address addr) public view returns(bool){
        return nestedMap[addr][num];
    }

    function set(uint num, address addr, bool _b) public{
        
        nestedMap[addr][num] = _b;
    }

}