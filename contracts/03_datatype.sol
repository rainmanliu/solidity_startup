// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract DataType {
    // 布尔类型
    bool public isTrue = false;

    /************************************************************
    整型类
    uint、int
    ************************************************************/

    // 无符号整型，只有正数
    uint256 public unitMy = 22; // 默认是uint256

    // unit8 最大值为 2的8次方-1 为 255
    uint8 public u8 = 2**8 - 1;
    // unit256 最大值为 2的256次方 -1
    uint256 public u256 = 2**256 - 1;

    // 有符号整型， 可以有负数
    int256 public intMy = 11; // 默认是int256

    // int8 范围是 -2**7 到 2**7-1 和uint不一样的是只能去到m-1次方
    int8 public i8 = -2**7;

    // 内置函数最大值最小值
    int128 public minInt128 = type(int128).min;
    int128 public maxInt128 = type(int128).max;


    /************************************************************
    地址类
    address
    ************************************************************/

    address addressMy = 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c;
    address fakeAddress = 0xDA0bab807633f07f013f94DD0E6A4F96F8742B53;

    // 随机地址生成（待实现）
    function randomAddress() public pure returns (address) {
        return address(0xDA0bab807633f07f013f94DD0E6A4F96F8742B53);
    }

    address randomAddr1 = randomAddress();

    // bytes类 静态字节
    bytes1 bytesA = "1"; // 一个字符
    bytes1 bytesB = 0xb1; // 
    bytes5 bytsC = "12345";
    // #
}