async function main() {
  const [owner, user] = await ethers.getSigners();

  // Deploy contracts
  const PolicyNFT = await ethers.getContractFactory("PolicyNFT");
  const policyNFT = await PolicyNFT.deploy();
  await policyNFT.deployed();

  const CoveragePool = await ethers.getContractFactory("CoveragePool");
  const coveragePool = await CoveragePool.deploy();
  await coveragePool.deployed();

  console.log("Contracts deployed");

  // Mint a policy
  const mintTx = await policyNFT.mintPolicy(user.address, ethers.utils.parseEther("1"), 30 * 24 * 60 * 60);
  await mintTx.wait();
  console.log("Policy minted for user");

  // Simulate payout
  const payoutTx = await coveragePool.payout(user.address, ethers.utils.parseEther("1"));
  await payoutTx.wait();
  console.log("Payout executed");
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});