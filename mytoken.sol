// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
 
abstract contract MyNFT is ERC721, Ownable {
    uint256 private tokenIdCounter;

    constructor(string memory name, string memory symbol) ERC721(name, symbol) {}

    function mint(address to) external onlyOwner {
        _safeMint(to, tokenIdCounter);
        tokenIdCounter++;
    }

    function balanceOf(address owner) public view override returns (uint256) {
        return ERC721.balanceOf(owner);
    }

    function ownerOf(uint256 tokenId) public view override returns (address) {
        return ERC721.ownerOf(tokenId);
    }

    function approve(address to, uint256 tokenId) public override {
        // require(_isApprovedOrOwner(_msgSender(), tokenId), "ERC721: approve caller is not owner nor approved for all");
        super.approve(to, tokenId);
    }

    function getApproved(uint256 tokenId) public view override returns (address) {
        return ERC721.getApproved(tokenId);
    }

    function setApprovalForAll(address operator, bool approved) public override {
        ERC721.setApprovalForAll(operator, approved);
    }

    function isApprovedForAll(address owner, address operator) public view override returns (bool) {
        return ERC721.isApprovedForAll(owner, operator);
    }

    function transferFrom(address from, address to, uint256 tokenId) public override {
        _transfer(from, to, tokenId);
    }
}
