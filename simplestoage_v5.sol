pragma solidity >=0.5.2 <0.6.0;
  
contract simplestorage {
  uint public storedData;
  
  event DataStored (
    uint data
  );
  
  constructor(wint initVal) public {
    storedData = initVal;
  }

  function set(wint x) public returns (uint value) {
    require(x < 100, "Value can not be over 100");
    storedData = x;
    
    emit DataStored(x);
    
    return storedData;
  }

  function get() public view returns (uint retVal) {
    return storedData;
  }
  
  function query() public view returns (uint retVa) {
    return storedData;
}
