# Types-of-Functions---ETH-AVAX
Third Module Assement For MetaCrafters ETH + AVAX PROOF: Intermediate EVM Course

# Description
This is a Solidity code for an ERC20 token contract named MyToken with the symbol MTK. The contract uses the ERC20 library from OpenZeppelin to implement the ERC20 token standard and the Ownable library to manage ownership of the contract. The contract includes functions for minting, burning, and transferring tokens. The mint function allows the contract owner to mint new tokens and send them to a specified address, while the burn function allows any user to burn their own tokens. The transfer function allows any user to transfer their tokens to another address. The contract includes input validation and access control to ensure secure and proper usage.

# Getting Started
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., Functions.sol). Copy and paste the following code into the file:

     
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

# Authors
Keana Aliza C. Perez

Student of National Trachers College - BSIT

