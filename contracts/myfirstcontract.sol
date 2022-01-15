//SPDX-License-Identifier: CC-BY-4.0
pragma solidity ^0.8.11;

interface Regulator {
    function loan() external view returns (bool);
    function checkValue(uint amount) external view returns (bool);
}

contract Bank is Regulator {
    uint private value;

    constructor (uint amount) {
        value = amount;
    }
    
    function deposit(uint amount) public {
        value += amount;
    }

    function withdrawn(uint amount) public {
        if (checkValue(amount)){
            value -= amount;
        }
    }

    function balance() public view returns (uint) {
        return value;
    }

    function loan() public view returns (bool) {
        return value > 0;
    }

    function checkValue(uint amount) public view returns (bool) {
        return amount <= value;
    }

}

contract MyFirstContract is Bank(10) {
    string private name;
    uint private age;

    function setName(string memory newName) public {
        name = newName;
    }

    function getName() public view returns (string memory) {
        return name;
    }

    function setAge(uint newAge) public {
        age = newAge;
    }

    function getAge() public view returns (uint){
        return age;
    }

}
