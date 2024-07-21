// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

// eth 利用wei单位计量，一个 eth 等于 10**18次方wei
contract EtherUnit {
    
    // wei
    uint256 public oneWei = 1 wei;
    bool public isOneWei = oneWei == 1;

    // gwei 1e9  1^9 都可以表达
    uint256 public oneGwei = 1 gwei;
    bool public isOneGwei = oneGwei == 1e9;
    bool public isOtherOneGwei = oneGwei == 1^9;

    // ether 1e18 1^18 都可以表达
    uint256 public oneEther =  1 ether;
    bool public isOneEther = oneEther ==  1e18;
    bool public isOtherOneEther = oneEther ==  1^18;

}
