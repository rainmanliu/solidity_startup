// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract GasInfo {
    /* 
    // 计算一个交易需要付多少 ether
    // gas数量 * gas价格 = ether  
    // 未使用的gas 将会被退还

    // 更高价格的gas 将会被优先处理
    */

    /* Gas 限制  limit  */
    // 在一个交易中：可以设置最大数量的gas
    uint256 public i = 0;

    function iCanTxForever() public {
        while (true) {
            i += 1;
        }
    }
}