# SolidityIntro

*This project is part of my journey into blockchain and smart contract development using Solidity.*

---

## Description

SolidityIntro is a collection of beginner smart contracts built to explore core blockchain concepts on Ethereum.

The project is divided into multiple independent contracts, each focusing on a specific use case:
- NFT creation
- Tokenization
- Lottery system

Through these implementations, the project demonstrates how decentralized applications (dApps) can handle ownership, randomness, and value exchange without centralized control.

---

## Projects Overview

### NFT_Collection

A basic NFT smart contract that introduces the concept of non-fungible tokens.

Features:
- Unique token creation (minting)
- Ownership tracking
- Token identification using `tokenId`
- Foundation for NFT collections

NFTs rely on unique identifiers to distinguish each asset within a contract, ensuring ownership and scarcity.

---

### SmartContractLottery

A decentralized lottery system implemented as a smart contract.

Features:
- Users can enter the lottery
- Contract stores participants
- Winner selection logic
- Ether-based participation

Lottery smart contracts automate the process of selecting winners and handling funds without intermediaries, ensuring transparency and fairness.

---

### Tokenizer

A basic token contract demonstrating fungible asset creation.

Features:
- Token balance management
- Transfer logic
- Simple representation of digital assets

This introduces the concept of tokenization, where assets are represented digitally on-chain.

---

## Technologies

- **Solidity**
- **Foundry**

---

## Learning Objectives

- Understand Solidity syntax and smart contract structure
- Learn differences between:
  - Fungible tokens vs NFTs
  - Centralized vs decentralized systems
- Implement real blockchain use cases:
  - Ownership (NFT)
  - Value transfer (Token)
  - Game logic (Lottery)
- Handle on-chain data and transactions
