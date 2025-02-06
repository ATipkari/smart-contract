const { Web3 } = require("web3");

// const CONTRACT_ADDRESS = "0x5FbDB2315678afecb367f032d93F642f64180aa3";
const CONTRACT_ADDRESS = "0xCf7Ed3AccA5a467e9e704C703E8D87F634fB0Fc9"

// ✅ Replace with your Infura, Alchemy, or local RPC URL
const PROVIDER_URL = "http://127.0.0.1:8545/";

// ✅ Load contract ABI (Ensure ABI is exported after deployment)
// const CONTRACT_ABI = require('./artifacts/contracts/Variable.sol/Variable.json').abi;
const CONTRACT_ABI = require('./artifacts/contracts/Array.sol/Array.json').abi;

const web3 = new Web3(PROVIDER_URL);

const contract = new web3.eth.Contract(CONTRACT_ABI, CONTRACT_ADDRESS);
// console.log(contract)
async function getValue() {
    const value = await contract.methods.newArray(0).call();
    console.log("Stored Value:", value);
}

getValue();