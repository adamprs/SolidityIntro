Ce projet a pour but de créer un token sur une blockchain. Afin de le réaliser, j'ai choisi d'utiliser le langage Solidity et le framework Foundry pour les raisons suivantes.

Solidity : 

Solidity est le principal langage utilisé pour la réalisation de smart contracts, notamment sur Ethereum, la blockchain la plus répandue. Il est donc essentiel de maîtriser ce langage pour développer dans l’écosystème blockchain, ce projet est donc une bonne opportunité pour le pratiquer.

Solidity dispose d’une documentation riche et d'une communauté active de développeurs, ce qui rend l'apprentissage plus accessible.

Solidity prend en charge des standards de tokens comme ERC-20 et ERC-721, facilement utilisables pour créer des tokens conformes aux conventions de l'écosystème.

Foundry :

J'ai également décidé d’utiliser Foundry comme framework de développement de smart contracts plutôt que d’autres options comme Hardhat, Remix, ou Truffle, pour les raisons suivantes :

Foundry est un framework en forte adoption dans les entreprises, ce qui en fait un choix stratégique pour acquérir des compétences recherchées.

Foundry est réputé pour sa vitesse d'exécution, permettant des tests rapides et des déploiements efficaces, ce qui accélère le développement.

Il permet d'écrire des scripts de déploiement et de tests directement en Solidity, ce qui permet de rester dans le même environnement de développement que celui de la rédaction des contrats.

Foundry intègre des fonctionnalités de test avancées, essentielles pour vérifier les aspects de sécurité critiques des smart contracts.

ERC-20 :

Un autre choix clé a été la norme de token à implémenter. Plusieurs standards existent pour faciliter l'interopérabilité des contrats. J'ai opté pour ERC-20 pour les raisons suivantes :

C’est la norme la plus largement acceptée pour les tokens fongibles sur Ethereum. En suivant ce standard, mon token devient compatible avec la majorité des applications et protocoles de l'écosystème Ethereum.

Sepolia :

Pour le déploiement, j'ai choisi le testnet Sepolia pour sa stabilité et sa légèreté. Sepolia est également soutenu par la Fondation Ethereum, ce qui garantit sa longévité. De plus, obtenir des ETH de test sur Sepolia est simple grâce aux faucets, facilitant les tests de mon token sans coûts réels.

