// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./ERC20.sol";
import "./Ownable.sol";

contract MyToken is ERC20, Ownable {
    constructor(uint256 initialSupply) ERC20("MyToken", "MTK") {
       _mint(msg.sender, initialSupply );
    }

    function mint(address account, uint256 amount) public onlyOwner {
        _mint(account, amount);
    }
    

    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }
}
