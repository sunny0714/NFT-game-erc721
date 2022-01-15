// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "./ERC721Full.sol";

contract SunnyToken is ERC721Full {
  constructor() ERC721Full("Sunny Token", "SUNONE") public {
  }

  function mint(address _to, string memory _tokenURI) public returns(bool) {
    uint _tokenId = totalSupply().add(1);
    _mint(_to, _tokenId);
    _setTokenURI(_tokenId, _tokenURI);
    return true;
  }
}