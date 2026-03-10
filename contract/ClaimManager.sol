// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ClaimManager {

    event ClaimProcessed(address user, uint256 amount);

    function processClaim(address user, uint256 amount) public {

        emit ClaimProcessed(user, amount);

    }

}