pragma solidity >=0.5.2 <0.6.0;
  
contract simplestorage {
  wint public storedData;
  
  event DataStored (
    wint data
  );
  
  constructor(wint initVal) public {
    storedData = initVal;
  }

  function set(wint x) public returns (wint value) {
    require(x < 100, "Value can not be over 100");
    storedData = x;
    
    emit DataStored(x);
    
    return storedData;
  }

  function get() public view returns (wint retVal) {
    return storedData;
  }
  
  function query() public view returns (wint retVa) {
    return storedData;
}
