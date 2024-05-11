// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyToken is ERC20, Ownable {
    constructor() ERC20("MyToken", "MTK") Ownable(msg.sender) {}

    // Only the owner can mint new tokens to a provided address
    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }

    // Any user can burn their own tokens
    function burn(address from, uint256 amount) public {
        _burn(from, amount);
    }

    // Any user can transfer their tokens to another address
    function transfer(address to, uint256 amount) public override returns (bool) {
        _transfer(msg.sender, to, amount);
        return true;
    }
}
