// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

struct Person{
    string myName;
    uint id;
    uint age;
    bool sex;
}

contract StructTest {
    // struct Person{
    //     string myName;
    //     uint id;
    //     uint age;
    //     bool sex;
    // }

    Person[] public personList;

    function addPerson(string memory name, uint _id, uint _age, bool _sex) public {
        // 三种方式初始化一个struct、
        personList.push(Person(name, _id, _age, _sex));

        personList.push(Person({myName: "123", id: 1,  age: 2, sex: true}));

        Person memory pItem;
        pItem.myName = "123";
        personList.push(pItem);
    }

    function getPersonList() public view returns(Person[] memory) {
        return personList;
    }

    function getPersonLength() public view returns (uint){
        return personList.length;
    }
}