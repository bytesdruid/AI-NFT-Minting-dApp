// minting contract
pragma solidity ^0.5.0;

contract Mint {
    // the owner of the contract
    address public owner;
    // the address of the token contract
    address public tokenAddress;
    // the amount of tokens to mint
    uint256 public amount;

    // constructor
    constructor(address _tokenAddress, uint256 _amount) public {
        owner = msg.sender;
        tokenAddress = _tokenAddress;
        amount = _amount;
    }

    // mint tokens
    function mint() public {
        // check if the caller is the owner
        require(msg.sender == owner, "Only the owner can mint tokens");
        // mint the tokens
        ERC20(tokenAddress).mint(amount);
    }
}


