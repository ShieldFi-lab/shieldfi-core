# ShieldFi Test Scripts

## policy-flow-test.js

Simulates the following ShieldFi MVP flow:
1. Deploy PolicyNFT and CoveragePool contracts
2. User buys a policy (NFT minted)
3. Premium sent to CoveragePool
4. Simulate parametric trigger
5. ClaimManager executes payout

Run using Hardhat or Remix JS VM.