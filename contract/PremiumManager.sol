// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract PremiumManager {

    event PremiumPaid(address user, uint256 amount);

    function payPremium() public payable {

        emit PremiumPaid(msg.sender, msg.value);

    }

}