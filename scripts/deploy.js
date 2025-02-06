const hre = require("hardhat");

async function main() {
  const MyContract = await hre.ethers.deployContract("Variable");
  await MyContract.waitForDeployment();
  
  console.log("Contract deployed at:", MyContract.target);
}

main().catch((error) => {
  console.error(error);
  process.exit(1);
});