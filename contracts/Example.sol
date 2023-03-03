// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract Example {
  IERC20 token;

  event Run(uint256 balance);


  constructor(address tokenAddress) {
    token = IERC20(tokenAddress);
  }

  function run(address holderAddress) public {
    emit Run(token.balanceOf(holderAddress));
  }
}
