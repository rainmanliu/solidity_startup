// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract EnumTest {
    // 枚举类型, 自定义
    enum Status {
        Pending,
        Start,
        Accepted,
        Rejected,
        Canceled
    }

    // 默认值是 第一个
    Status public status = Status.Rejected;

    function getStatus() public view returns (Status) {
        return status;
    }

    // 更新是以 uint方式传参更新
    function setStatus(Status _status) public {
        status = _status;
    }

    // 删除后会回归默认值
    function delStatus() public {
        delete status;
    }
}