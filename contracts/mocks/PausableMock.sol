pragma solidity ^0.4.18;


import '../lifecycle/Pausable.sol';


// mock class using Pausable
contract PausableMock is Pausable {
  bool public drasticMeasureTaken;
  uint256 public count;

  function PausableMock() public {
    drasticMeasureTaken = false;
    count = 0;
  }

  function normalProcess() external whenNotPaused {
    count++;
  }

  function drasticMeasure() external whenPaused {
    drasticMeasureTaken = true;
  }

}
