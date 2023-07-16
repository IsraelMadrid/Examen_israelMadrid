private static void queryexec(string Query,
    string cadena)
{
    using (SqlConnection connection = new SqlConnection(
               cadena))
    {
        SqlCommand command = new SqlCommand(Query, cadena);
        command.Connection.Open();
        command.ExecuteNonQuery();
    }
}
