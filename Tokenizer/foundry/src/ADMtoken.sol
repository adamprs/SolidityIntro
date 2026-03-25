// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract ADMtoken {
    mapping(address => uint256) private s_balances;
    mapping(address => mapping(address => uint256)) private s_allowances;

    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);

    uint256 private _totalSupply;

    string private _name;
    string private _symbol;

    constructor() {
        _name = "ADMtoken";
        _symbol = "ADM";
        _totalSupply = 100 * 10 ** 18;
        s_balances[msg.sender] = _totalSupply; // Attribuer toute la supply à l'adresse qui déploie le contrat
    }

    function name() public view returns (string memory) {
        return (_name);
    }

    function symbol() public view returns (string memory) {
        return (_symbol);
    }

    function totalSupply() public view returns (uint256) {
        return _totalSupply;
    }

    function decimals() public pure returns (uint256) {
        return 18;
    }

    function balanceOf(address _owner) public view returns (uint256) {
        return s_balances[_owner];
    }

    function transfer(address _to, uint256 _amount) public returns (bool) {
        require(_to != address(0), "Invalid address");
        require(balanceOf(msg.sender) >= _amount, "balance too low");
        s_balances[msg.sender] -= _amount;
        s_balances[_to] += _amount;
        emit Transfer(msg.sender, _to, _amount);
        return true;
    }

    function transferFrom(address from, address to, uint256 value) public returns (bool) {
        require(to != address(0), "Invalid address");
        require(balanceOf(from) >= value, "balance too low");
        require(s_allowances[from][msg.sender] >= value, "allowance too low");
        s_balances[to] += value;
        s_balances[from] -= value;
        s_allowances[from][msg.sender] -= value;
        emit Transfer(from, to, value);
        return true;
    }

    function approve(address spender, uint256 value) public returns (bool) {
        require(spender != address(0), "Invalid spender address");
        s_allowances[msg.sender][spender] = value;
        emit Approval(msg.sender, spender, value);
        return true;
    }

    function allowance(address _owner, address _spender) public view returns (uint256) {
        return s_allowances[_owner][_spender];
    }
}
