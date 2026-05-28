using System;
using System.Net.Http;
using System.Threading.Tasks;

public class Program
{
    static async Task Main()
    {
        using HttpClient client = new();
    
        while(true)
        {
            using HttpResponseMessage response = await client.GetAsync("http://maestro:80/api");

            string content = await response.Content.ReadAsStringAsync();

            Console.WriteLine(content);

            Thread.Sleep(1000); 
        }
    } 
}