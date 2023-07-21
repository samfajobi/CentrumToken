// contracts/CentrumToken.sol
// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.21;


import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Capped.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";


contract CentrumToken is ERC20Capped {
    address payable public owner;

    constructor(uint256 cap) ERC20("Centrum", "CTT") ERC20Capped(cap * (10 ** decimals())) {
        owner = msg.sender;
        _mint(owner, 70000000 * (10 ** decimals()));
    }
}