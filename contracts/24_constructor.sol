// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

// constructor 在合约创建时，可选择执行的内部函数
contract X {
    string public name;
    constructor(string memory _name) {
        name = _name;
    }
    
}

// Base contract Y
contract Y {
    string public text;

    constructor(string memory _text) {
        text = _text;
    }
}

// 有两种方式可以初始化 父合约（待参数的）
contract B is X("hi"), Y("hello") {}

contract C is X, Y {
    constructor(string memory _name, string memory _text) X(_name) Y(_text){}
}

// 父类构造函数总是按照继承的顺序被调用，而不管在子类构造函数中列出的父类合约的顺序如何。

// Order of constructors called:
// 1. X
// 2. Y
// 3. D
contract D is X, Y {
    constructor() Y("Y was called") X("X was called")  {}
}