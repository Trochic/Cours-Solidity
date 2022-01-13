// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

interface Interface_Token {

    function totalSupply() external view returns (uint256);
    function decimals() external view returns (uint8);
    function symbol() external view returns (string memory);
    function name() external view returns (string memory);
    function getOwner() external view returns (address);

    function balanceOf(x) external view returns (uint256);
    function transfer(x,y) external returns(bool);
    function allowance(x,y) external view returns (uint256);
    function approve(x,y) external returns(bool);
    function transferFrom(x,y,z) external returns(bool);

    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);

}