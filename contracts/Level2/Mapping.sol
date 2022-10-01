// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract MyMap{

    mapping(uint => address) public numToaddr;
    uint public totalCount;

    function setAddr(uint num, address addr) public {
        numToaddr[num] = addr;
        totalCount+=1;
    }

    function getAddr(uint num) public view returns(address){
        return numToaddr[num];
    }
    function delAddr(uint num) public {
        delete numToaddr[num];
        totalCount-=1;
        
    }

    function totalAddress() public view returns(uint){
        return totalCount;
    }
}