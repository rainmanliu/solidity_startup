// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract ArrayRemove {
    uint256[] public arr;

    // 利用用移位，将数据移除 [1,2,3,4] =>remove(1) [1,3,4], 和python中 list 的 remove内置方法类似
    function remove(uint256 _index) public {
        require(_index < arr.length, "index out of bound");

        for (uint256 i = _index; i < arr.length - 1; i++) {
            arr[i] = arr[i + 1];
        }

        arr.pop();
    }

    // 利用最后值 赋值需要移除的数据，删除最后一个值，和上面一种相比，会改变数据位置
    // [1,2,3,4] => remove(1) => [1,4,3]
    function removeAnother(uint256 _index) public {
        require(_index < arr.length, "index out of bound");

        arr[_index] = arr[arr.length - 1];

        arr.pop();
    }

    function test() external {
        arr = [1, 2, 3, 4, 5];
        remove(2);
        // [1, 2, 4, 5]
        assert(arr[0] == 1);
        assert(arr[1] == 2);
        assert(arr[2] == 4);
        assert(arr[3] == 5);
        assert(arr.length == 4);

        arr = [1];
        remove(0);
        // []
        assert(arr.length == 0);
    }
}