// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "./interfaces/IBEP20.sol";

contract MonToken is IBEP20 {

    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowance;

    string _name = "Mon Token";
    string _symbol = "MT";
    uint8 _decimals = 18;
    uint256 _totalSupply = 1 * 10 ** 18;
    address _owner;

    constructor() {
        _owner = msg.sender;
    }

    function totalSupply() public override view returns (uint256) {
        return _totalSupply;
    }
    function decimals() public override view returns (uint8) {
        return _decimals;
    }
    function symbol() public override view returns (string memory) {
        return _symbol;
    }
    function name() public view override returns (string memory) {
        return _name;
    }
    function getOwner() external view override returns (address) {
        return _owner;
    }

}