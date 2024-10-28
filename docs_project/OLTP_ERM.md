- CLIENTE

``````sql
CREATE TABLE Cliente (
    idcliente INT IDENTITY PRIMARY KEY NOT NULL,
    nome VARCHAR(100),
    cpf VARCHAR(11) UNIQUE NOT NULL,
    idade INT NOT NULL,
    data_nascimento DATE NOT NULL,
    email VARCHAR(100),
    telefone VARCHAR(20),
    fonte_renda_id INT NOT NULL, 
    faixa_renda_id INT NOT NULL, 
    FOREIGN KEY (fonte_renda_id) REFERENCES FonteRenda(idfonte_renda),
    FOREIGN KEY (faixa_renda_id) REFERENCES FaixaRenda(idFaixaRenda)
);
``````

- FONTE DE RENDA

``````sql
CREATE TABLE FonteRenda (
    idfonte_renda INT IDENTITY PRIMARY KEY NOT NULL,
    Fonte_Renda VARCHAR(100) NOT NULL
);
``````

- FAIXA DE RENDA

``````sql
CREATE TABLE FaixaRenda (
    idFaixaRenda INT IDENTITY PRIMARY KEY NOT NULL,
    Faixa_Renda VARCHAR(100) NOT NULL,  
    FonteRenda_id INT NOT NULL,  
    renda_min DECIMAL(10, 2) NOT NULL, 
    renda_max DECIMAL(10, 2) NOT NULL, 
    FOREIGN KEY (FonteRenda_id) REFERENCES FonteRenda(idfonte_renda)
);

``````

- PRODUTO

``````SQL
CREATE TABLE Produto (
    idproduto INT IDENTITY PRIMARY KEY NOT NULL,
    NomeProduto VARCHAR(255) NOT NULL,
    Descrição TEXT,
    TipoProduto VARCHAR(100) NOT NULL,
    ValorMinimo DECIMAL(10, 2) NOT NULL,
    ValorMaximo DECIMAL(10, 2) NOT NULL,
    NumeroParcelasMaximo INT NOT NULL,
    comprova_renda BOOLEAN DEFAULT FALSE,  
    exige_garantia BOOLEAN DEFAULT FALSE,
    consignado BOOLEAN DEFAULT FALSE 
);
``````

- CONTRATO

``````sql
CREATE TABLE Contrato (
    idcontrato INT IDENTITY PRIMARY KEY NOT NULL,
    ValorEmprestimo DECIMAL(10, 2) NOT NULL,
    NumeroParcelas INT NOT NULL,
    TaxaJuros DECIMAL(5, 2) NOT NULL,
    DataContratacao DATE NOT NULL,
    DataFimContrato DATE, 
    StatusContrato VARCHAR(20) NOT NULL 
        CHECK (StatusContrato IN ('Ativo', 'Encerrado', 'Inadimplente')),
    cliente_id INT NOT NULL,
    produto_id INT NOT NULL,
    MetodoPagamento VARCHAR(50),  
    Observacoes TEXT, 
    FOREIGN KEY (cliente_id) REFERENCES Cliente(idcliente),
    FOREIGN KEY (produto_id) REFERENCES Produto(idproduto),
    INDEX (StatusContrato),  
    INDEX (DataContratacao)  
);
``````

- PAGAMENTO

``````sql
CREATE TABLE Pagamento (
    idpagamento INT IDENTITY PRIMARY KEY NOT NULL,
    NumeroParcela INT NOT NULL,
    ValorParcela DECIMAL(10, 2) NOT NULL,
    DataVencimento DATE NOT NULL,
    DataPagamento DATE,
    StatusPagamento VARCHAR(20) NOT NULL 
        CHECK (StatusPagamento IN ('Pago', 'Pago com atraso', 'Atrasado', 'Inadimplente')),
    contrato_id INT NOT NULL,
    FOREIGN KEY (contrato_id) REFERENCES Contrato(idcontrato),
    cliente_id INT NOT NULL,
    produto_id INT NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES Cliente(idcliente),
    FOREIGN KEY (produto_id) REFERENCES Produto(idproduto), 
    Observacoes TEXT,  
    INDEX (DataVencimento), 
    INDEX (StatusPagamento) 
);
``````