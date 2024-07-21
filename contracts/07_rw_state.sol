// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;


contract SimpleStorage {
    /* 状态变量 新增、编辑 需要发送交易    
     获取免费
    */
    uint public num;

    // 赋值，需要发送交易
    function setNum(uint _num) public  {
        num = _num;
    }

    // 获取值，不需要发送交易
    function getNum() public view returns (uint) {
        return num;
    }
}