pragma solidity ^0.5.11;

contract Visibility {
    function privateFunction() private pure returns (string memory) {
        return "private function called";
    }

    function testPrivateFunction() public pure returns (string memory) {
        return privateFunction();
    }

    function internalFunction() internal pure returns (string memory) {
        return "internal function called";
    }

    function publicFunction() public pure returns (string memory) {
        return "public function called";
    }

    function externalFunction() external pure returns (string memory) {
        return "external function called";
    }
    
    string private privateVariable = "my private variable";
    string internal internalVariable = "my internal variable";
    string public publicVariable = "my public variable";

}

contract Child is Visibility {
    function testInternalFunction() public pure returns (string memory) {
        return internalFunction();
    }

}
