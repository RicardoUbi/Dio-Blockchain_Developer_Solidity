# Criando e Utilizando a Sua Carteira de Criptomoedas

Neste desafio, criamos e utilizamos uma carteira digital utilizando o Node. O objetivo era fazer uma fazer transferencias simples, afim de entender os conceitos de blockchain na prática. 


## Passo 1: Criando Carteira de Criptomoedas

Nesta etapa, usamos o script "src/creatWallet.js" para gerar nossa carteira, de acordo com os atributos de segurança necessários.

Para instalar o node, vá ao ao site (https://nodejs.org/), e de acordo com seu sistema operacional, faça download e sua instalação.

Após instalar o node e entrar no projeto, rode este comando para instalar as dependencias do projeto:

    npm install

Após garantir que o node e as dependências necessárias estejam instaladas, rode o comando:

    node src/createWallet.js

Você deve receber uma saida com este padrão:

    Carteira gerada
    Endereço:  mnycmFLFBQh4LxqZV9Qd2dJFxWUVbTjT5P
    Chave privada: cU78tpXE37i3zsJTQaZqKh11JvHhVPsj2YX35SzRxSQJAZ7LKcMY
    Seed: already search negative leave inherit grain gap cash include blast cook pear

## Passo 2: Abrindo sua Carteira de Criptomoedas

Após concluir a etapa anterior, faça o download e instale o Electrum Wallet, disponivel no site oficial (https://electrum.org/).

Adicione sua carteira ao app, utilizando o endereço gerado.

    Exemplo:
    Endereço:  mnycmFLFBQh4LxqZV9Qd2dJFxWUVbTjT5P

E entre com a seed gerada.

    Exemplo:
    Seed: already search negative leave inherit grain gap cash include blast cook pear

## Passo 3: Utilizando sua Carteira de Criptomoedas

Como esta carteira é para fins de teste, ela foi gerada na testnet, então para estes fins utilizaremos o Bitcoin Testnet Faucet, que é uma moeda de teste, sem valor.

Então para utiliza-la, vá ao site (https://bitcoinfaucet.uo1.net/) e adicione seu endereço gerado a area de endereço e clique em "send testnet bitcoins".

A transação deve aparecer tanto no site, quanto no app "Electro Wallet".

Agora você pode enviar a moeda de volta para a rede.

Para enviar suas moedas de teste de volta, basta iniciar uma transação na sua carteira de teste, acessando o app "Electro Wallet" e clicando em "Send", e adicionando o seguinte endereço BTC: tb1qlj64u6fqutr0xue85kl55fx0gt4m4urun25p7q .

Após fazer isso, você concluiu as 3 etapas.

## Divirta-se!