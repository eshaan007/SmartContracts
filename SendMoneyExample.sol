pragma solidity ^0.6.0;

contract SendMoneyExample {
    
    uint public balanceReceived;
    
    function receiveMoney() public payable {
        balanceReceived += msg.value;
    } 
    
    function getBalance() public view returns(uint) {
        return address(this).balance;
    }
    
    function withdrawMoney() public { // not payable because we are taking money out, not in
        address payable to = msg.sender;
        
        to.transfer(this.getBalance());
    }
    
    function withdrawMoneyTo (address payable _to) public {
        _to.transfer(this.getBalance());
    }
}
