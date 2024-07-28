// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

// 在交易过程中，错误会撤销对状态所做的所有更改。
// 可以通过调用 require、revert 或 assert 来抛出错误
// require 用于在执行之前验证输入和条件
// revert 与 require 类似，
// assert 用于检查不应为假的代码，assertion 失败可能意味着存在错误。使用自定义错误以节省 gas 。
contract ErrorCon {
    function testRequire(uint256 x) public pure {

        require(x < 10, "error x greater than 10");
    }

    // 同require
    function testRevert(uint256 x) public pure {
        if (x < 10) {
            revert("123");
        }
    }

    uint256 public num;

    function testAssert() public view {
        // 断言用于判断一个变量
        assert(num == 10);
    }

    // 自定义报错
    error InsufficientBalance(uint256 balance, uint256 withdrawAmount);

    function testCustomError(uint256 _withdrawAmount) public view {
        uint256 bal = address(this).balance;
        if (_withdrawAmount > bal) {
            // 自定义报错
            // 报错信息可作为日志记录
            revert InsufficientBalance(bal, _withdrawAmount);
        }
    }
}

contract Account {
    uint256 public balance;
    uint256 public constant MAX_UINT = 2 ** 256 - 1;

    function deposit(uint256 _amount) public {
        uint256 oldBalance = balance;
        uint256 newBalance = balance + _amount;

        // 必须大于，否则报错
        require(newBalance > oldBalance, "OverFlow");
        
        balance = newBalance;
        assert(balance >= oldBalance);
    }

    // 撤销操作
    function withdraw(uint256 _amount) public {
        uint256 oldBalance = balance;

        // balance - _amount does not underflow if balance >= _amount
        require(balance >= _amount, "Underflow");

        if (balance < _amount) {
            revert("Underflow");
        }

        balance -= _amount;

        assert(balance <= oldBalance);
    }
}