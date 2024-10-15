// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Token is ERC20 {
    address payable public owner;
    uint8 private _decimals;

    constructor(string memory name_, string memory symbol_, uint8 decimals_, uint256 initialSupply_) ERC20(name_, symbol_) {
        _decimals = decimals_;
        owner = payable(msg.sender);
        _mint(owner, initialSupply_ * (10 ** _decimals));
    }

    function decimals() public override view returns (uint8) {
        return _decimals;
    }

    function mint(address account, uint256 amount) public {
        _mint(account, amount);
    }
}