Déploiement :


Pour déployer le contrat sur Sepolia, il y a besoin des éléments suivants :

Clé API Alchemy : Créez un compte sur Alchemy.com et générez une clé API pour accéder au réseau Sepolia.

Clé privée de portefeuille : Utilisez un portefeuille comme MetaMask pour obtenir la clé privée de votre compte, qui sera nécessaire pour signer les transactions de déploiement.

Clé API Etherscan : Créez un compte sur Etherscan et générez une clé API. Elle vous permettra de vérifier le contrat sur Sepolia Etherscan après le déploiement.


Compilation du contrat : forge build
Executer les tests du contrat : forge test -vvvv
Executer certaints test : forge test --match-test < pattern >
déploiement du contrat et verification sur sepolia etherscan : forge script script/DeployToken.sol:DeployToken --rpc-url (votre clef api sepolia) --broadcast --verify --etherscan-api-key (votre clef api etherscan) --private-key (votre private key)
