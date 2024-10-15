// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "./Token.sol";

contract Factory {
    event TokenCreated(address tokenAddress);

    function deployToken(string memory name, string memory symbol, uint8 decimals, uint256 initialSupply) public {
        Token t = new Token(name, symbol, decimals);
        t.mint(msg.sender, initialSupply);
        emit TokenCreated(address(t));
    }
}