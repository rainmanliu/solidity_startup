// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract FirstApp {
    uint256 public count=100;

    // get count
    function getCount() public view returns (uint256) {
        return count;
    }

    function inc() public {
        count = count + 1;
    }

    function des() public {
        count = count - 1;
    }
}