const SunnyToken = artifacts.require("SunnyToken");

/*
 * uncomment accounts to access the test accounts made available by the
 * Ethereum client
 * See docs: https://www.trufflesuite.com/docs/truffle/testing/writing-tests-in-javascript
 */
contract("SunnyToken", function (/* accounts */) {
  it("should assert true", async function () {
    await SunnyToken.deployed();
    return assert.isTrue(true);
  });
});
