# Types-of-Functions---ETH-AVAX
Third Module Assement For MetaCrafters ETH + AVAX PROOF: Intermediate EVM Course

# Description
This is a Solidity Smart Contract code for an ERC20 token contract named KToken with the symbol KTOK. The contract allows the contract owner to mint new tokens and any user to burn their own tokens, while preventing any user from minting new tokens. The contract uses the ERC20 library from OpenZeppelin to implement the ERC20 token standard and the Ownable library to manage ownership of the contract. The contract includes functions for minting, burning, transferring, and checking token balances, as well as events for minting and burning. The contract includes input validation and access control to ensure secure and proper usage.

# Getting Started
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., Functions.sol). Copy and paste the following code into the file:

     
    // SPDX-License-Identifier: MIT
    pragma solidity ^0.8.0;
    
    import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
    import "@openzeppelin/contracts/access/Ownable.sol";
    
    contract KToken is ERC20, Ownable {
        constructor() ERC20("KToken", "KTOK") Ownable(msg.sender) {   
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

# Authors
Keana Aliza C. Perez

Student of National Trachers College - BSIT

