// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract PolicyNFT is ERC721 {

    uint256 public nextPolicyId;

    struct Policy {
        uint256 coverageAmount;
        uint256 expiration;
        string triggerType;
        bool active;
    }

    mapping(uint256 => Policy) public policies;

    constructor() ERC721("ShieldFi Policy", "SFP") {}

    function createPolicy(
        address user,
        uint256 coverageAmount,
        uint256 duration,
        string memory triggerType
    ) public returns (uint256) {

        uint256 policyId = nextPolicyId;

        policies[policyId] = Policy({
            coverageAmount: coverageAmount,
            expiration: block.timestamp + duration,
            triggerType: triggerType,
            active: true
        });

        _mint(user, policyId);

        nextPolicyId++;

        return policyId;
    }
}