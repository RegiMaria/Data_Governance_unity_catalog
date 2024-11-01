CREATE TABLE fonte_renda (
    idfonte_renda INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fonte_renda VARCHAR(100) NOT NULL
);

CREATE TABLE faixa_renda (
    idfaixa_renda INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    faixa_renda VARCHAR(100) NOT NULL
);

CREATE TABLE fonte_renda_faixa_renda (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    idfonte_renda INT NOT NULL,
    idfaixa_renda INT NOT NULL,
    FOREIGN KEY (idfonte_renda) REFERENCES fonte_renda(idfonte_renda),
    FOREIGN KEY (idfaixa_renda) REFERENCES faixa_renda(idfaixa_renda)
);

CREATE TABLE endereco (
	idendereco INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	cep VARCHAR (20),
	rua VARCHAR (50),
	numero int,
	bairro VARCHAR (50),
	cidade VARCHAR (50),
	estado VARCHAR (2)
);

CREATE TABLE cliente (
	idcliente  INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	nome VARCHAR (100),
	cpf VARCHAR (11) UNIQUE NOT NULL,
	idade INT NOT NULL,
	data_nascimento DATE NOT NULL,
	email VARCHAR (100),
	telefone VARCHAR (20),
	profissao VARCHAR (100),
	fonte_renda_id INT NOT NULL,
	faixa_renda_id INT NOT NULL,
	endereco_id INT NOT NULL,
	FOREIGN KEY (fonte_renda_id) REFERENCES fonte_renda (idfonte_renda),
	FOREIGN KEY (faixa_renda_id) REFERENCES faixa_renda (idfaixa_renda),
	FOREIGN KEY (endereco_id) REFERENCES endereco (idendereco)
);

CREATE TABLE produto (
    idproduto INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome_produto VARCHAR(255) NOT NULL,
    descrição TEXT,
    tipo_produto VARCHAR(100) NOT NULL,
    valor_minimo DECIMAL(10, 2) NOT NULL,
    valor_maximo DECIMAL(10, 2) NOT NULL,
    numero_parcelas_maximo INT NOT NULL,
    comprova_renda BOOLEAN DEFAULT FALSE,  
    exige_garantia BOOLEAN DEFAULT FALSE,
    consignado BOOLEAN DEFAULT FALSE 
);
CREATE TABLE contrato (
    idcontrato INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	codigo_contrato VARCHAR (100) NOT NULL,
    valor_emprestimo DECIMAL(10, 2) NOT NULL,
    numero_parcelas INT NOT NULL,
    taxa_juros DECIMAL(5, 2) NOT NULL,
    data_contratação DATE NOT NULL,
    data_fim_contrato DATE, 
    status_contrato VARCHAR(20) NOT NULL,
    metodo_pagamento VARCHAR(50),  
    observacoes TEXT, 
	cliente_id INT NOT NULL,
    produto_id INT NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES cliente(idcliente),
    FOREIGN KEY (produto_id) REFERENCES produto(idproduto)  
);

CREATE INDEX idx_status_contrato ON contrato(status_contrato);
CREATE INDEX idx_data_contratacao ON contrato(data_contratação);

CREATE TABLE pagamento (
    idpagamento INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    numero_parcela INT NOT NULL,
    valor_parcela DECIMAL(10, 2) NOT NULL,
    data_vencimento DATE NOT NULL,
    data_pagamento DATE,
    status_pagamento VARCHAR(20) NOT NULL,
	dias_atraso INT,
	observacoes TEXT, 
    contrato_id INT NOT NULL,
    cliente_id INT NOT NULL,
    produto_id INT NOT NULL,
	FOREIGN KEY (contrato_id) REFERENCES contrato(idcontrato),
    FOREIGN KEY (cliente_id) REFERENCES cliente(idcliente),
    FOREIGN KEY (produto_id) REFERENCES produto(idproduto)
);

CREATE INDEX idx_data_vencimento ON pagamento(data_vencimento);
CREATE INDEX idx_status_pagamento ON pagamento(status_pagamento);