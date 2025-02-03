//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Test} from "forge-std/Test.sol";
import {ERC721} from "src/ERC721.sol";

contract ERC721Test is Test {

    ERC721 public erc721;

    function setUp() public override {
        erc721 = new ERC721();
    }

    function testERC721() public {
        // Test ERC721
        // Test supportsInterface
        assertTrue(erc721.supportsInterface(type(IERC721).interfaceId));
        assertTrue(erc721.supportsInterface(type(IERC165).interfaceId));
        // Test balanceOf
        assertEquals(erc721.balanceOf(address(this)), 0);
        // Test ownerOf
        assertEquals(erc721.ownerOf(0), address(0));
    }
}
