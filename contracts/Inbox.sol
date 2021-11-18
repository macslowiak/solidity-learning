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
    
    function getMessage() public view returns (string memory) {
        return message;
    }
    
}