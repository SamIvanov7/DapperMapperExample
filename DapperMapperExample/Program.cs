using Dapper;
using DapperMapperExample.Core;
using Npgsql;

var connString = "Host=localhost;Port=5432;Database=cs-pro;Username=postgres;Password=admin";
var sql = @"
select * from ""DataLake"".""Book""
where ""title"" = @bookTitle
";

var param = new { bookTitle = "The Hobbit" };

using var connection = new NpgsqlConnection(connString);
connection.Open();
var books = connection.Query<Book>(sql, param).ToList();

foreach (var book in books)
{
    Console.WriteLine(book.Title);
    Console.WriteLine(book.Id);
}