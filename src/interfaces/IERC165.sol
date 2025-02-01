//SPDX-Lisence-Identifier: MIT
pragma solidity ^0.8.0;

interface IERC165 {
    
    /**
     * @dev check if a contract implements an interface
     */
    function supportsInterface(bytes4 interfaceId) external view returns (bool);

}