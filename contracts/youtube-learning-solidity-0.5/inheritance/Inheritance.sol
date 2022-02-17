pragma solidity ^0.5.3;

//INHERITANCE
/*
contract A {
    function getContractName() public pure returns (string memory) {
        return "Contract A";
    }
}

contract B is A {
    function getContractName() public pure returns (string memory) {
        return "Contract A";
    }
}  
*/


//PARAMETERS
contract A {
    string public name;

    constructor(string memory _name) public {
        name = _name;
    }
}

contract B is A("Contract B") {  
    // or "constructor() A("Contract B") public {}"
    // if we need to pass variable parameters "constructor(string memory _name) A(_name) public {}"
}

