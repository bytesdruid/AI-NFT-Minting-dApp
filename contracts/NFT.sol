pragma solidity ^0.8.0;

import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract NFT is ERC721URIStorage {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    address public owner;
    address public cost;

    constructor(
        string memory name,
        string memory symbol,
        address _cost
    ) ERC721(_name, _symbol) {
        owner = msg.sender;
        cost = _cost;
    }
}