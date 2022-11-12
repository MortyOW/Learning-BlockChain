// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.9.0;

/* Define Contract 

contract SimpleStorage {

    uint256 favoriteNumber = 5;
     bool favoriteBool = false;
     string favoriteString = "String";
     int256 favoriteInt = -5;
     address favoriteAdress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4 (ethereum adress);
     bytes32 favoriteBytes = "cat";
} */

contract SimpleStorage {

    uint256 favoriteNumber; // starts at 0
    bool favoriteBool;

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    People[] public people;
    mapping(string => uint256) public nameToFavoriteNumber; // Dictionnary like data structure with 1 value / key

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }


    // view, pure
    function retrieve() public view returns(uint256){
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public{
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

}