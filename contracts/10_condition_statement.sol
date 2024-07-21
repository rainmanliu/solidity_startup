// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Conditional {
    
    // if else 常规控制
    function foo(uint x) public pure returns (uint) {
        if (x < 10){
            return x * 5;
        } else if (x < 20) {
            return 5 * (5 + x);
        } else {
            return 5 * 5 * x;
        }
    }

    // 三元表达式
    function TernaryOperator(uint x) public pure returns (uint){
        return x > 10 ? 1 : 2;
    }

    // for循环
    function forLoop() public pure {
        for (uint256 i = 0; i < 10; i++) {
            if (i == 5) {
                continue; 
            }

            if (i == 5) {
                break;
            }
        }

        uint256 j;
        while (j<10) {
            j++;
        }
    }
}