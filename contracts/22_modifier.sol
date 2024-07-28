// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

// “Function Modifier”（函数修饰符）指的是在函数调用之前和/或之后能够运行的代码。
// 限制访问权限、验证输入以及防范重入攻击。
contract FucModifier {
    address public owner;
    uint256 public x = 10;
    bool public locked;

    constructor() {
        // 设置交易sender 作为合约的owner
        owner = msg.sender;
    }

    // 仅owner 可以执行此函数
    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner"); // 验证交易的发送者是否为合约的owner
        _; // 允许执行剩下的函数体
    }

    // Modifiers can take inputs. This modifier checks that the
    // 验证传入地址不能为0
    modifier validAddress(address _addr) {
        require(_addr != address(0), "Not valid address");
        _;
    }

    // 修饰器可以在函数之前和/或之后被调用
    // 修饰器的作用是防止一个函数在仍在执行时被再次调用
    modifier noReentrancy() {
        require(!locked, "No reentrancy");

        locked = true;
        _;
        locked = false;
    }
    
    // 这里每次执行都会验证locked参数
    function decrement(uint256 i) public noReentrancy {
        x -= i;

        if (i > 1) {
            decrement(i - 1);
        }
    }
}