                 ADM42Token


ADM42Token est un smart contract basé sur la norme ERC-20 et déployé sur la blockchain Sepolia. Le token a été conçu pour permettre des transactions simples et des autorisations de dépenses par un tiers.


Transfert de Tokens : La fonction transfer permet d’envoyer des tokens d'une adresse à une autre. Utilisation : ourToken.transfer(address_destinataire, montant).

Autorisation de Dépense : Avec approve, un utilisateur peut autoriser une adresse spécifique à dépenser une quantité donnée de ses tokens. Utilisation : ourToken.approve(spender, montant).

Dépenses par Tiers : Une fois autorisée, l'adresse approuvée peut utiliser transferFrom pour réaliser des transactions au nom de l'utilisateur autorisant. Utilisation : ourToken.transferFrom(owner, destinataire, montant).

Consultation des Soldes : La fonction balanceOf permet de vérifier le solde d'une adresse spécifique. Utilisation : ourToken.balanceOf(address_utilisateur).

Consultation des Autorisations : Avec allowance, il est possible de voir combien une adresse est autorisée à dépenser au nom d’une autre. Utilisation : ourToken.allowance(owner, spender).
