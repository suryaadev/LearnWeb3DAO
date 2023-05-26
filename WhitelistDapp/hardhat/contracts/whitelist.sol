//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Whitelist {
    uint8 public maxWhitelistedAddressses;

    mapping(address => bool) public whitelistAddresses;

    uint8 public numAddressesWhitelisted;

    constructor(uint8 _maxWhitelistedAddressses) {
        maxWhitelistedAddressses = _maxWhitelistedAddressses;
    }

    function addAddressToWhitelist() public {
        require(
            !whitelistAddresses[msg.sender],
            "Sender is already been whitelisted"
        );
        require(
            numAddressesWhitelisted < maxWhitelistedAddressses,
            "limit is reached"
        );
        whitelistAddresses[msg.sender] = true;
        numAddressesWhitelisted += 1;
    }
}


// 0xbAC439D1A283c882631DfdE51D802503F9c2CcdF