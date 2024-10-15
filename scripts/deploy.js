const hre = require("hardhat");

async function main() {
    const Factory = await hre.ethers.getContractFactory("Token");

    // Start deployment, returning a promise that resolves to a contract object
    const token = await Factory.deploy("USDT", "USDT", 6, 1000000);
    await token.deployed();
    console.log("Contract deployed to address:", token.address);
}

main()
    .then(() => process.exit(0))
    .catch(error => {
        console.error(error);
        process.exit(1);
    });