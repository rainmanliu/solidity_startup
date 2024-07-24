// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;


// 数据存储位置有三种
// storage ：默认存储在链上，需要gas消耗
// memory ：临时存储内存中，不需要gas消耗
// calldata    : 外部调用参数存储内存中,不需要gas消耗 包含参数
contract DataLocation {
    uint256[] public arr;
    mapping(uint256 => address) public map ;

    struct Mystruct {
        uint256 a;
        string b;
        uint32 c;
    }

    function f() public {
        code
    }

    // function _f(uint256[] storage _arr, mapping(uint256 => address) storage _map, Mystruct storage _mystruct) internal {
        
    // }
}