// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.8.0/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.8.0/contracts/access/Ownable.sol";

contract Vrindavan is ERC20, Ownable {
    
    // Constructor to initialize the token with a name and symbol
    constructor(string memory _name, string memory _symbol) ERC20(_name, _symbol) {}

    // Function to mint new tokens, only callable by the contract owner
    function mintTokens(address _to, uint256 _amount) external onlyOwner {
        _mint(_to, _amount);
    }

    // Function to burn tokens from the caller's balance
    function burnTokens(uint256 _amount) external {
        require(balanceOf(msg.sender) >= _amount, "Insufficient balance to burn");
        _burn(msg.sender, _amount);
    }

    // Overridden transfer function to include a balance check
    function transfer(address _to, uint256 _amount) public override returns (bool) {
        require(balanceOf(msg.sender) >= _amount, "Insufficient balance to transfer");
        return super.transfer(_to, _amount);
    }
}
