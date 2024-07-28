// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

// 事件 可以被区块链记录
// 监听事件，更新用户interface
// 更低的存储形式
contract EventCon {
    event Log(address indexed sender, string message);
    event AnotherLog();

    function test() public  {
        emit Log(msg.sender, "hello world");
        emit Log(msg.sender, "hello world");
        emit AnotherLog();
    }
}