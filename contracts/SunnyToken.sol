// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract SunnyToken is ERC721URIStorage {
  using Counters for Counters.Counter;

  Counters.Counter private _tokenIds;

  constructor() ERC721("Sunny Token", "SUNONE") {}

  function mint(address _to, string memory _tokenURI) public returns(bool) {
    _tokenIds.increment();
    uint256 _tokenId = _tokenIds.current();
    _mint(_to, _tokenId);
    _setTokenURI(_tokenId, _tokenURI);
    return true;
  }
}