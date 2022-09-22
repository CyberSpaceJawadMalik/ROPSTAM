
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

// we wil import openzeppelin ERC1155 standard because 
// it's usable for both fungible and non-fungible 
import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";


contract Ropstam is ERC1155 {
  uint256   Hammer ;   //this will be our fungible token
  uint256   Open_Apes;  //this will be our non-fungible token
  uint [] price=[msg.value];  
  uint [] ids;
  address  owner;
  address buyer;

 //here we will have a contructor in which we will be minting our both tokens 
 // also we are using IPFS for storing the image and getting the link through it and 
 //using that link here as URI
  constructor() public ERC1155("https://ipfs.io/ipfs/Qmdt82p5EoKB9BxdsEjSXityuhYDkM9gNmc8DHBJSJUk7b?filename=nft121.webp") {
      _mint(msg.sender, Hammer, 10, "");
      _mint(msg.sender,Open_Apes, 1, "");
      owner=msg.sender;
    }

   //this function will now own only Hammer Token
    function HammerOwner()public{  
          _mint( msg.sender,Hammer,10,"");
      
      }

       //this function will now own only OpenApes token
    function openApesOwner()public{
          _mint( msg.sender,Open_Apes,10,"");
          
      }
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

// we wil import openzeppelin ERC1155 standard because 
// it's usable for both fungible and non-fungible 
import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";


contract Ropstam is ERC1155 {
  uint256   Hammer ;   //this will be our fungible token
  uint256   Open_Apes;  //this will be our non-fungible token
  uint [] price=[msg.value];  
  uint [] ids;
  address  owner;
  address buyer;

 //here we will have a contructor in which we will be minting our both tokens 
 // also we are using IPFS for storing the image and getting the link through it and 
 //using that link here as URI
  constructor() public ERC1155("https://ipfs.io/ipfs/Qmdt82p5EoKB9BxdsEjSXityuhYDkM9gNmc8DHBJSJUk7b?filename=nft121.webp") {
      _mint(msg.sender, Hammer, 10, "");
      _mint(msg.sender,Open_Apes, 1, "");
      owner=msg.sender;
    }

   //this function will now own only Hammer Token
    function HammerOwner()public{  
          _mint( msg.sender,Hammer,10,"");
      
      }

       //this function will now own only OpenApes token
    function openApesOwner()public{
          _mint( msg.sender,Open_Apes,10,"");
          
      }

   //to buy Nft the must pay the 100 ropstam fee
    function BuyNft()public payable{
        require(msg.value>=100,"not enough ropsten to buy nft"); 
       safeBatchTransferFrom(owner,msg.sender,ids,price,"nft");
      }


}

   //to buy Nft the must pay the 100 ropstam fee
    function BuyNft()public payable{
        require(msg.value>=100,"not enough ropsten to buy nft"); 
       safeBatchTransferFrom(owner,msg.sender,ids,price,"nft");
      }


}