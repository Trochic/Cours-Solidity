pragma solidity ^0.8.1;

contract Salaire {

    struct Employe {
        string nom;
        uint matricule;
        uint totalRetire;
        uint nbRetraits;
    }
    
    uint public totalIn; //Total déposé
    uint public totalOut; //Total retiré
    uint public total; //Montant actuel

    mapping(address => Employe) public employes;

    //Condition speciale en Solidity qui se place dans les définitions de fonctions (j'explique à l'oral)
    modifier estEmploye() {
        bool result;

        //Ecrire le test pour vérifier que l'appelant est un employé

        require(result, "Vous n'etes pas un employe");
        _;
    }
    //Creer un nouvel Employé
    //nouvelEmploye()

    //On souhaite suivre le montant total d'eth déposé dans le contrat
    //Va seulement nous servir à déposer de l'Eth
    //depot()

    //Verifier si l'appelant est un employe à l'aide du modifier estEmploye()
    //Calculer combien il peut retirer
    //Vérifier qu'il peut bien retirer le montant demandé
    //retirer()
}