# Initial Setup

```bash
npm install
```

# Compile Smart Contract

```bash
npx hardhat compile
```

# Deploy Smart Contract

```bash
npx hardhat run scripts/deploy.js --network polygon_amoy
```

# Verify Smart Contract

```bash
npx hardhat verify --network polygon_amoy --constructor-args scripts/verify.js DEPLOYED_CONTRACT_ADDRESS
```