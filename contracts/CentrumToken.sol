// contracts/CentrumToken.sol
// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;


import "openzeppelin/contracts/token/ERC20/ERC20.sol";
import "openzeppelin/contracts/token/ERC20/extensions/ERC20Capped.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";


contract CentrumToken is ERC20Capped, ERC20Burnable {
    address payable public owner;
    
    uint256 public blockReward;

    constructor(uint256 cap, reward ) ERC20("Centrum", "CTT") ERC20Capped(cap * (10 ** decimals())) {
        owner = msg.sender;
        _mint(owner, 70000000 * (10 ** decimals()));
        blockReward = reward * (10 ** decimals());
    }


    function setBlockReward(uint256 reward) public onlyOwner {

    }

    modifier onlyOwner {
        require(msg.sender == owner, "Only the owner can make changes");
        _;
    }
}