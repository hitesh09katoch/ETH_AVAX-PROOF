# ETH_AVAX-PROOF

This is a beginner Solidity Smart Contract to demonstrate error handling functions.  

## Description

This contract implements the 3 error handling functions inside Solidity including

Assert
Revert
Require

These 3 help the program execution by halting program execution as and when a condition is not met. 

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. Go to https://remix.ethereum.org/.

Once you are on the website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., Test.sol). Copy and paste the following code into the file:

```javascript
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

```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.13" (or another compatible version), and then click on the "Compile Test.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "MyToken" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the mint or burn function. Click on the "MyToken" contract in the left-hand sidebar, and then click on the "mint" function. 

## Help

Make sure to have the compiler option set to 0.8.18 to avoid version depenedency errors. 
```
pragma solidity ^0.8.18
```

## Authors

  
Hitesh Katoch


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
