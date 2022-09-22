
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";


contract Ropstam is ERC20 {

    address owner=msg.sender;
    constructor(uint256 initialSupply)  ERC20("Ropstam", "RST") {
        _mint(msg.sender, initialSupply);
    }

     function Buy()public payable{
         require(msg.value>=100,"not enough wei");
         _transfer(owner,msg.sender,100);
      
     }

}
