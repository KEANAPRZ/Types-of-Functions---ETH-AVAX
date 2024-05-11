// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract KToken is ERC20, Ownable {
constructo() ERC20("KToken", "KTOK") Ownable (msg.sender) {
}
    // Only the owner can mint new tokens to a provided address
    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }

    // Any user can burn their own tokens
    function burn(address from, uint256 amount) public  {
        _burn(from, amount);
    }

}
