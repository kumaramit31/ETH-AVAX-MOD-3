// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract Assessment {

    // public variables here
    string public tokenname="hii guys";
    string public tokenabbr="hey";
    uint public totalsupply=0;
    address owner;
    // mapping variable here
    mapping(address=>uint) public balance;
    // mint function
    constructor() {
        owner=msg.sender;
    }
    modifier onlyOwner {
    require (owner==msg.sender, "only owner can access");
    _;
    }
    function mint(address _adrs, uint _value) public onlyOwner {
        totalsupply += _value;
        balance[_adrs]+=_value;
    }
    // burn function
    function burn(address _adrs, uint _value) public returns(bool) {
        if(balance[_adrs]>=_value){
            totalsupply -= _value;
            balance[_adrs] -= _value;
            return false;
        }
        return true;
        
    }
}