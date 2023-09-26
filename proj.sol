// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.13;

contract calculator {   
    address private owner;
    uint private MagicNumber = 234;
    
    constructor() {
        owner = msg.sender;
    }
    
    function divideNumbers(uint256 a, uint256 b) public pure returns (uint256) {
        if(b==0){
            revert();
        }
        return a / b;
    }
    
    function viewMagicNumber() public view returns(uint256) {
        require(msg.sender == owner, "Only the contract owner can call this function.");
        return(MagicNumber);
    }
    
    function power(int a, int b) public pure returns (int256) {
        assert(b >= 0);
        int answer = 1;
        while(b>0){
            answer *= a;
            b--;
        }
        return(answer);
    }
}

