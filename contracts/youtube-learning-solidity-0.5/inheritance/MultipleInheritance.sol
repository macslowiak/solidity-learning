pragma solidity ^0.5.11;

/*
contract A {
    function foo() public pure returns (string memory){
        return "A";
    }
}

contract B {
    function bar() public pure returns (string memory){
        return "B";
    }
    
}

contract C is A,B { //inherit both contracts
    
}  
*/

contract A {
    event Log(string message);

    function foo() public {
        emit Log("A.foo was called");
    }

    function bar() public {
        emit Log("A.bar was called");
    }
}

contract B is A {
    function foo() public {
        emit Log("B. foo was called");
        A.foo();
    }

    function bar() public {
        emit Log("B. bar was called");
        super.bar();
    }
}

contract C is A {
    function foo() public {
        emit Log("C.foo was called");
        A.foo();
    }

    function bar() public {
        emit Log("C. bar was called");
        super.bar();
    }
}

contract D is B,C {

}
