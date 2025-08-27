﻿using MySql.Data.MySqlClient;
using ProjetoLoja.Models;
using Dapper;


namespace ProjetoLoja.Repositorio
{
    public class ProdutoRepositorio
    {
        // Declarando uma string
        private readonly string _connectionString;


        //Declarando um construtor que verifica a conexão
        public ProdutoRepositorio(string connectionString)
        {
            _connectionString = connectionString;
        }

        public async Task<IEnumerable<Produto>> TodosProdutos()
        {
            using var connection = new MySqlConnection(_connectionString);
            var sql = "SELECT Id, Nome, Descricao, Preco, ImageUrl, Estoque FROM Produtos";
            return await connection.QueryAsync<Produto>(sql);
        }
    }
}
