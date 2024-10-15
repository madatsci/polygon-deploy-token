/** @type import('hardhat/config').HardhatUserConfig */
require('dotenv').config();
require("@nomiclabs/hardhat-ethers");
require("@nomiclabs/hardhat-etherscan");

const { API_URL, PRIVATE_KEY } = process.env;

module.exports = {
  solidity: "0.8.28",
  defaultNetwork: "polygon_amoy",
  networks: {
    hardhat: {
    },
    polygon_amoy: {
      url: API_URL,
      accounts: [`0x${PRIVATE_KEY}`]
    }
  },
};
