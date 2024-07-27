// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract FunctionTest {
    // 函数可以返回多个值
    function returnMany() public pure returns (uint256, bool) {
        return (123, true);
    }

    // 返回值可以被命名
    function named() public pure returns (uint256 x, bool isTrue, uint y) {
        return (1, true, 2);
    }

    // 返回值可以被赋予它们的名称。在这种情况下，返回语句可以省略。
    function anotherNmed() public pure returns (uint256 x, bool isTrue, uint y) {
        x = 1;
        isTrue = true;
        y = 123;
    }
    
    // Use destructuring assignment when calling another
    // function that returns multiple values.
    function destructuringAssignments()
        public
        pure
        returns (uint256, bool, uint256, uint256)
    {
        (uint256 i, bool b) = returnMany();

        // 部分值可以被空缺， 和go的 _ 类似
        (uint256 x, , uint256 y) = (4, 5, 6);

        return (i, b, x, y);
    }

    // 数组可以 入参
    function arrayInput(uint256[] memory _arr) public {}

    // 数组可以 出参
    uint256[] public arr;

    function arrayOutput() public view returns (uint256[] memory) {
        return arr;
    }
}

// Call function with key-value inputs
contract XYZ {
    function someFuncWithManyInputs(
        uint256 x,
        uint256 y,
        uint256 z,
        address a,
        bool b,
        string memory c
    ) public pure returns (uint256) {}

    // 常规方式传参
    function callFunc() external pure returns (uint256) {
        return someFuncWithManyInputs(1, 2, 3, address(0), true, "c");
    }

    // key value方式传递
    function callFuncWithKeyValue() external pure returns (uint256) {
        return someFuncWithManyInputs({
            a: address(0),
            b: true,
            c: "c",
            x: 1,
            y: 2,
            z: 3
        });
    }
}