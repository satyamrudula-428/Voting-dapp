const hre = require("hardhat");

async function main() {
    // Get the contract factory
    const Voting = await hre.ethers.getContractFactory("Voting");

    // Deploy the contract
    const voting = await Voting.deploy();

    // Wait for the deployment to finish
    await voting.deployTransaction.wait();

    // Log the contract address
    console.log("Voting contract deployed to:", voting.address);
}

main()
    .then(() => process.exit(0))
    .catch((error) => {
        console.error(error);
        process.exit(1);
    });
