// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IExtensionStorage} from "../../extension/IExtensionStorage.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {IToken} from "../../IToken.sol";

interface IERC20Logic is IERC20Metadata, IExtensionStorage, IToken {
    function burn(uint256 amount) external returns (bool);

    function mint(address receipient, uint256 amoount) external returns (bool);

    function burnFrom(address account, uint256 amount) external returns (bool);

    function decreaseAllowance(address spender, uint256 amount) external returns (bool);

    function increaseAllowance(address spender, uint256 amount) external returns (bool);
}