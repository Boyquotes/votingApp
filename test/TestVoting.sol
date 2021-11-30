// SPDX-License-Identifier: GPL
pragma solidity 0.8.9;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Voting.sol";

contract TestVoting {

  function testItStoresAValue() public {
    Voting voting = Voting(DeployedAddresses.Voting());

    bool expected = true;

    Assert.equal(voting.addVoter('0xea43a29460f947c7b41fdd267074e6e42117fa5f'), expected, "It should store the value 1.");
  }

}
