# Criando Primeira Criptomoeda da Rede Ethereum

Neste desafio, criamos um contrato Solidity que implementa um token ERC20 chamado RicoToken. Um token ERC20 é um padrão para representar ativos digitais na blockchain Ethereum.


**Funcionalidades:**

* **Criação do Token:** O contrato cria um novo token chamado "Rico Token" com o símbolo "Rico" e 18 casas decimais. Inicialmente, todo o suprimento de tokens (10 ether) é atribuído ao endereço do deployer.
* **Gerenciamento de Saldos:** O contrato mantém registros dos saldos de cada endereço na rede Ethereum.
* **Transferências:** Permite a transferência de tokens entre endereços.
* **Aprovações:** Suporta o mecanismo de aprovação, permitindo que um usuário autorize outro endereço a gastar seus tokens em nome dele.
* **Transferências em Nome de Outros:** Permite que um endereço transfira tokens em nome de outro usuário, desde que tenha sido previamente aprovado.

**Estrutura do Contrato:**

* **IERC20:** Implementa a interface padrão ERC20, definindo as funções essenciais para um token ERC20.
* **RicoToken:** Implementa o contrato do token, herdando a interface IERC20. Contém variáveis de estado para armazenar informações sobre o token, como nome, símbolo, número de casas decimais, saldos e aprovações. Também implementa as funções necessárias para gerenciar o token, incluindo transferência, aprovação e consulta de saldos.

**Obs:**
Existem comentários explicativos no [código](/Criando_Primeira_Criptomoeda_Rede_Ethereum/RicoToken.sol).

## Divirta-se!