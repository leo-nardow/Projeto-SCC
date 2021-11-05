--
-- Banco de dados: [db_scc]
--

-- --------------------------------------------------------

-- Passo a passo para criar o banco de dados:

-- 1- Adicionar um Novo Item Banco de Dados do SQL Server chamado db_scc na Pasta App_Data.

-- 2- Criar as seguintes tabelas com os respectivos campos:

--
-- Estrutura da tabela [carro]
--

CREATE TABLE [dbo].[carro] (
    [id]      INT           IDENTITY (1, 1) NOT NULL,
    [idmarca] INT           NOT NULL,
    [modelo]  NVARCHAR (50) NOT NULL,
    [ano]     INT           NOT NULL,
    [cor]     NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_idmarca] FOREIGN KEY ([idmarca]) REFERENCES [dbo].[marca] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
);

--
-- Estrutura da tabela [marca]
--

CREATE TABLE [dbo].[marca] (
    [id]   INT           IDENTITY (1, 1) NOT NULL,
    [nome] NVARCHAR (50) NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


-- 3- Com o db_scc.mdf selecionado, ir na janela Propriedades à direita e copiar a Cadeixa de Conexão.

-- Exemplo de cadeia de conexão: Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\db_scc.mdf;Integrated Security=True

-- 4- Colar a cadeia de conexão dentro do arquivo Web.config na linha 8, dentro do campo connectionString=""

-- 5- Se não funcionar, tentar colocar a cadeia de conexão do exemplo do topico 3 na linha 8 no mesmo campo.