// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.7.0 <0.9.0;

contract MiniBanque {

    mapping(address => uint) public totalDepot;
    mapping(address => uint) public totalRetire;

    function depot() public payable {
        totalDepot[msg.sender] += msg.value;
    }

    function retirer(uint montant) public {
        require(montant <= totalDepot[msg.sender]-totalRetire[msg.sender], "Tu ne peux pas retirer plus que ce que tu as depose");

        payable(msg.sender).transfer(montant);

        totalRetire[msg.sender] += montant;
    }
}
