// contracts/GameItems.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";

contract Token is ERC1155 {
    constructor()
        ERC1155("https://nft1155-sample.herokuapp.com/metadata/{id}")
    {}

    function mint(address account, uint256 id) external {
        _mint(account, id, 1, "");
    }
}
