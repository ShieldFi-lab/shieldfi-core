// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract CoveragePool {

    mapping(address => uint256) public liquidity;

    uint256 public totalLiquidity;

    function deposit() public payable {
        liquidity[msg.sender] += msg.value;
        totalLiquidity += msg.value;
    }

    function withdraw(uint256 amount) public {

        require(liquidity[msg.sender] >= amount, "Not enough balance");

        liquidity[msg.sender] -= amount;
        totalLiquidity -= amount;

        payable(msg.sender).transfer(amount);
    }

}