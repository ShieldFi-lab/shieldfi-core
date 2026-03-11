pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MockUSDT is ERC20 {

    constructor() ERC20("Mock USDT", "mUSDT") {
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }

    function faucet(address user, uint256 amount) public {
        _mint(user, amount);
    }
}