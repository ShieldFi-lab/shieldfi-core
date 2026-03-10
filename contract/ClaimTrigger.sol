// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ClaimTrigger {

    bool public triggerActivated;

    event TriggerActivated(string triggerType, uint256 timestamp);

    function activateTrigger(string memory triggerType) public {

        triggerActivated = true;

        emit TriggerActivated(triggerType, block.timestamp);
    }

    function resetTrigger() public {
        triggerActivated = false;
    }

}