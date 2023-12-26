# GDSC_TASK_ROUND

#### Explanation of Token Functions

1. mint function allows the owner (as specified by the onlyOwner modifier) to mint a new token and assign ownership to the specified address (to). It uses the _safeMint function inherited from ERC721 to create a new token.

2. balanceOf function overrides the balanceOf function from ERC721 and returns the number of tokens owned by a given address (owner).

3. ownerOf function overrides the ownerOf function from ERC721 and returns the address of the owner of a given token ID (tokenId).

4. approve function overrides the approve function from ERC721. It approves another address (to) to transfer a specific token (tokenId). It uses super to call the overridden function from the parent contract.

5. getApproved function overrides the getApproved function from ERC721 and returns the address approved for a specific token (tokenId).

6. setApprovalForAll function overrides the setApprovalForAll function from ERC721. It enables or disables approval for all tokens owned by the sender for a given operator (operator).

7. isApprovedForAll function overrides the isApprovedForAll function from ERC721 and returns whether the given address (operator) is an approved operator for the given owner (owner).

8. transferFrom function overrides the transferFrom function from ERC721 and transfers the ownership of a specific token (tokenId) from one address (from) to another address (to). It uses the internal \_transfer function.
