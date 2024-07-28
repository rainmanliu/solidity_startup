// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

// 获取器函数可以被声明为“view”或“pure”类型。
// “View”函数声明不会更改状态。“Pure”函数声明既不会更改也不会读取状态变量。 
contract ViewPureFuc {
    uint256 public x = 1;

    // view function 只读函数，不可修改合约的状态变量，也不能调用非 view 函数。
    function getNum() public view returns(uint) {
        // pureFunc(); 
        return x + 1;
    }
    
    // pure function 纯函数，不可修改合约的状态变量，也不能调用非 pure 函数。
    function pureFunc(uint256 i) public pure returns (uint) {
        return i + 1;
    }
}