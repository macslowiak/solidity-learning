// specifying solidity version used, compiler using it
pragma solidity ^0.8.7;  

// defining a contract
contract Inbox {
    string public message;
    
// defining constructor with "memory" word (temporary memory)
    constructor(string memory initialMessage){
        message = initialMessage;
    }
    
// defining functions
    function setMessage(string memory newMessage) public {
        message = newMessage;
    }
    
/*  

// This can be deleted because getters are created from contract initial variables
    function getMessage() public view returns (string memory) {
        return message;
    }
    
    
// gas transaction cost
    function doMath(int a, int b) public pure {
        a + b; // f.ex. 3 gas
        b - a; // f.ex. 3 gas
        a * b; // f.ex. 5 gas
        a == 0 ; // f.ex. 3 gas
    }
    
*/    
}