//SPDX-Lilicense-Identifier: MIT
pragma solidity ^0.8.0;

interface IERC721 {
    
    /**
     * @dev emitted when `tokenId` token is transferred from `from` to `to`.
     */
    event Transfer(address indexed from, address indexed to, uint256 indexed tokenId);
    
    /**
     * @dev emitted when `owner` enables `approved` to manage the `tokenId` token.
     */
    event Approval(address indexed owner, address indexed approved, uint256 indexed tokenId);
    
    /**
     * @dev emitted when `owner` enables or disables `operator` to manage all of its assets.
     */
    event ApprovalForAll(address indexed owner, address indexed operator, bool approved);
    
    /**
     * @dev returns the number of tokens in `owner`'s account.
     */
    function balanceOf(address owner) external view returns (uint256);
    
    /**
     * @dev returns the owner of the `tokenId` token.
     */
    function ownerOf(uint256 tokenId) external view returns (address);
    
    /**
     * @dev transfers `tokenId` token from `from` to `to`.
     */
    function safeTransferFrom(address from, address to, uint256 tokenId) external;
    
    /**
     * @dev transfers `tokenId` token from `from` to `to`.
     */
    function transferFrom(address from, address to, uint256 tokenId) external;
    
    /**
     * @dev gives permission to `to` to transfer `tokenId` token.
     */
    function approve(address to, uint256 tokenId) external;
    
    /**
     * @dev gives permission to `to` to transfer all tokens of `owner`.
     */
    function setApprovalForAll(address to, bool approved) external;
    
    /**
     * @dev returns the `tokenId` token URI.
     */
    function tokenURI(uint256 tokenId) external view returns (string memory);
    
    /**
     * @dev checks if `tokenId` token is approved to be transferred by `to`.
     */
    function isApprovedForAll(address owner, address operator) external view returns (bool);
    
}