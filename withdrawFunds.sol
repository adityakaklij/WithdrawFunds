//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

contract WithdrawFunds{

function withdraw() public payable onlyOwner {
    (bool s, ) = payable(msg.sender).call{value: address(this).balance}("");
    require(s);
  }
  
}
