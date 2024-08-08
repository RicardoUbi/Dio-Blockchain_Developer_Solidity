# Criando um NFT de Pokémon com Blockchain

Neste desafio, criamos um NFT de Pokémon com Blockchain. Com um contrato Solidity que implementa um jogo de Pokémon baseado em NFTs (tokens não fungíveis) utilizando o padrão ERC721. O contrato permite a criação, batalhas e gerenciamento de Pokémon.

**Principais Funcionalidades:**

* **Criação de Pokémon:** Crie novos Pokémon com nome, nível e imagem personalizada.
* **Batalhas:** Faça seus Pokémon batalharem uns contra os outros, com o resultado influenciando seus níveis.
* **Gerenciamento de NFTs:** Cada Pokémon é representado por um token NFT único, que pode ser transferido entre as contas.

**Mecânica de Batalha:**

Ao iniciar uma batalha, os níveis dos dois Pokémon são comparados. O Pokémon com o nível mais alto tem uma maior probabilidade de ganhar. O vencedor aumenta seu nível em 2 pontos, enquanto o perdedor aumenta em 1 ponto.

## Estrutura do Contrato

- **Struct Pokemon:** Define a estrutura de um Pokémon, contendo nome, nível e imagem.
- **pokemons:** Um array público que armazena todos os Pokémon criados.
- **gameOwner:** Endereço do proprietário do jogo, responsável por criar novos Pokémon.

### Funcionalidades

- **constructor:** Inicializa o contrato com o nome e símbolo do NFT.
- **battle:** Permite que o dono de um Pokémon o faça batalhar contra outro Pokémon. A função atualiza os níveis dos dois Pokémon com base no resultado da batalha.
- **createNewPokemon:** Cria um novo Pokémon, atribuindo-o a um endereço específico e adicionando-o ao array de Pokémon. Somente o proprietário do jogo pode criar novos Pokémon.

### Modificador

- **onlyOwnerOf:** Garante que apenas o dono de um Pokémon possa chamar a função battle.

### Dependências

O contrato depende da biblioteca OpenZeppelin para a implementação do padrão ERC721.

## Como utilizar

Para utilizar o contrato pokemonNFT de forma prática e interativa, vamos utilizar um conjunto de ferramentas populares no desenvolvimento de contratos inteligentes:

- **Ganache:** Uma blockchain privada local para testes e desenvolvimento.
- **Remix IDE:** Um ambiente de desenvolvimento integrado online para Solidity.
- **Metamask:** Uma carteira digital que permite interagir com a blockchain.
- **IPFS:** Um sistema de armazenamento distribuído para hospedar as imagens dos Pokémon.


### Passo a Passo

**Configurar o Ganache:**

Inicie o Ganache e anote o endereço da rede local e a chave privada da primeira conta. Essa conta será utilizada para deploy do contrato e criação dos primeiros Pokémon.

**Criar o Projeto no Remix:**

Crie um novo projeto no Remix IDE.
Cole o código do contrato pokemonNFT em um novo arquivo Solidity.
Certifique-se de que o compilador esteja configurado para a versão correta do Solidity (0.8.0 ou superior).

**Compilar o Contrato:**

Compile o contrato no Remix. Verifique se não há erros de compilação.

**Configurar o Metamask:**

Adicione uma nova rede no Metamask com os dados da rede local do Ganache (endpoint, ID da rede, nome da rede, símbolo da moeda, URL do explorador).
Importe a chave privada da primeira conta do Ganache no Metamask.

**Deployer o Contrato:**

Na aba Deploy do Remix, selecione o contrato pokemonNFT e conecte sua carteira Metamask.
Clique em Deploy.

**Hospedar as Imagens no IPFS:**

Utilize uma ferramenta como o Pinata para hospedar as imagens dos Pokémon no IPFS. Anote os hashes das imagens.

**Criar Novos Pokémon:**

Utilize a função createNewPokemon do contrato para criar novos Pokémon. Passe o nome, o endereço para o qual o NFT será emitido e o hash da imagem hospedada no IPFS.

**Interagir com o Contrato:**

Utilize a função battle para fazer seus Pokémon batalharem.


## Divirta-se!