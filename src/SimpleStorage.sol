// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract SimpleStorage {
    uint256 public favNumber;

    struct Persons {
        uint256 number;
        string name;
    }

    Persons[] public listOfPeople;

    mapping(string => uint256) public nameToNumber;

    function addPersons(uint _num, string memory _name) public {
        listOfPeople.push(Persons(_num, _name));
        nameToNumber[_name] = _num;
    }

    function store(uint256 _favNumber) public virtual {
        favNumber = _favNumber;
    }

    function retrive() public view returns (uint256) {
        return favNumber;
    }
}
