pragma solidity ^0.8.0;

// Interface ERC20 padrão, definindo as funções básicas de um token ERC20
interface IERC20{

    //getters
    function totalSupply() external view returns(uint256);
    function balanceOf(address account) external view returns (uint256);
    function allowance(address owner, address spender) external view returns (uint256);

    //functions
    function transfer(address recipient, uint256 amount) external returns (bool);
    function approve(address spender, uint256 amount) external returns (bool);
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);

    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256);

}

// Contrato RicoToken que implementa o padrão ERC20
contract RicoToken is IERC20{

    string public constant name = "Rico Token"; // Nome do token
    string public constant symbol = "Rico"; // Símbolo do token
    uint8 public constant decimals = 18; // Número de casas decimais

    
    mapping (address => uint256) balances; // Mapeamento de endereços para saldos

    mapping(address => mapping(address=>uint256)) allowed; // Mapeamento de aprovações (dono => gastador => limite)
    
    uint256 totalSupply_ = 10 ether; // Total de tokens em circulação

    // Construtor do contrato
    constructor(){
        balances[msg.sender] = totalSupply_; // Atribui todo o supply inicial ao criador do contrato
    }

    // Implementação das funções da interface IERC20
    function totalSupply() public override view returns (uint256) {
        return totalSupply_; // Retorna o total de tokens em circulação
    }

    function balanceOf(address tokenOwner) public override view returns (uint256){
        return balances[tokenOwner]; // Retorna o saldo de um endereço
    }

    function transfer(address receiver, uint256 numTokens) public override returns (bool) {
        require(numTokens <= balances[msg.sender]); // Verifica se o remetente tem tokens suficientes
        balances[msg.sender] -= numTokens; // Decrementa o saldo do remetente
        balances[receiver] += numTokens; // Incrementa o saldo do destinatário
        emit Transfer(msg.sender, receiver, numTokens); // Emite evento de transferência
        return true; // Indica sucesso
    }

    function approve(address delegate, uint256 numTokens) public override returns (bool) {
        allowed[msg.sender][delegate] = numTokens; // Define o limite de gasto
        emit Approval(msg.sender, delegate, numTokens); // Emite evento de aprovação
        return true; // Indica sucesso
    }

    function allowance(address owner, address delegate) public override view returns (uint) {
        return allowed[owner][delegate]; // Retorna o limite de gasto aprovado
    }

    function transferFrom(address owner, address buyer, uint256 numTokens) public override returns (bool) {
        require(numTokens <= balances[owner]); // Verifica se o dono tem tokens suficientes
        require(numTokens <= allowed[owner][msg.sender]); // Verifica se o gastador tem aprovação suficiente

        balances[owner] -= numTokens; // Decrementa o saldo do dono
        allowed[owner][msg.sender] -= numTokens; // Decrementa o limite de gasto
        balances[buyer] += numTokens; // Incrementa o saldo do comprador
        emit Transfer(owner, buyer, numTokens); // Emite evento de transferência
        return true; // Indica sucesso
    }

}