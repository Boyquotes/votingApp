const Voting = artifacts.require("./Voting.sol");

contract("Voting", accounts => {
  it("...should store the votre and return true.", async () => {
    const votingInstance = await Voting.deployed();

    // Set value of 89
    // await votingInstance.set(89, { from: accounts[0] });

    // Get stored value
    const storedData = await votingInstance.addVoter.call(accounts[0]);
    // const storedData = await votingInstance.addVoter.call('0xea43a29460f947c7b41fdd267074e6e42117fa5f');

    assert.equal(storedData, true, "The voter was not stored.");
  });
});
