// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Immutable {
    // Immutable 和 const 不一样的是，允许在构建函数中再做初始化
    uint immutable n;

    constructor() {
        // 构造函数中初始化
        n = 123;
    }
}