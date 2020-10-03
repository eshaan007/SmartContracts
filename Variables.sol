pragma solidity ^0.6.0;

contract WorkingWithVariables {
    uint256 public muUint;
    
    function setMyUint (uint _myUint) public {
        muUint = _myUint;
    }
    
    bool public myBool;
    
    function setMyBool (bool _myBool) public {
        myBool = _myBool;
    }
    
    uint8 public myUint8;
    
    function incrementUint() public {
        myUint8++;
    }
    
    function derementUint() public {
        myUint8--;
    }
    
    address public myAddress;
    
    function setAddress(address _address) public {
        myAddress = _address;
    }
    
    function getBalanceOfAddress() public view returns(uint) {
        return myAddress.balance; // this function to know balance.
    }
    
    string public myString = ' hello world ';
    
    function setMyString(string memory _myString) public { // memory because it is much cheaper
        myString = _myString;
    }
    
}

// String should not be used because it will consume more WEI.. 
