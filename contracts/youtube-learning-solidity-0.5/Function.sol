pragma solidity ^0.5.3;

contract Function{
    function returnMultipleValues() public pure returns (uint, bool, uint) {
        return (1,true,2);
    }
    function assigned() public pure returns (uint x, bool y, uint z) {
        x = 1;
        y = true;
        z = 2;
    }

    function interestingIdeaOfAssigningValues() public pure returns (uint, bool, uint) {
        (uint i, bool b, uint j) = returnMultipleValues();
        return (i, b, j);
    }
}