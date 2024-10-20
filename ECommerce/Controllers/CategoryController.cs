using ECommerce.Data;
using ECommerce.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using static ECommerce.Models.Employeess;
using System;
using System.Collections.Generic;

namespace ECommerce.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CategoryController : ControllerBase
    {

        //public static List<BookCover> listofBookCover = new List<BookCover>()
        //{
        //new BookCover {Id = 1, Title = "Ehtashamul", ImageUrl = "Null", ImageFile = null},
        //new BookCover {Id = 2, Title = "Ehtramul", ImageUrl = "Null", ImageFile = null},
        //new BookCover {Id = 3, Title = "Nada", ImageUrl = "Null", ImageFile = null},
        //new BookCover {Id = 4, Title = "Nabiha", ImageUrl = "Null", ImageFile = null},
        //new BookCover {Id = 5, Title = "Tashim", ImageUrl = "Null", ImageFile = null},
        //};

        //[HttpGet]
        //public IEnumerable<BookCover> SetGetLocal()
        //{
        //return listofBookCover;
        //}

        //[HttpDelete]
        //public void Delete(int Id)
        //{
        //listofBookCover.RemoveAt(Id);
        //}

        //[HttpPost]
        //public void Post([FromBody]BookCover bookCover)
        //{
        //listofBookCover.Add(bookCover); 
        //}



        public static List<Book> listofBooks = new List<Book>()
        {
            new Book {Id = 1, Title = "C# Programming Essentials", Description = "A comprehensive guide to learning C# for beginners.", ImageUrl ="Null", BookUrl = "Null", CreateDate = DateTime.Now, 
            ISBNNumber = "978-3-16-148410-0", BookCover = new BookCover(),  BookWritterId = 1, BookWriter = new BookWriter() },
            new Book {Id = 2, Title = "Mastering ASP.NET", Description = "Deep dive into ASP.NET for advanced learners.", ImageUrl ="Null", BookUrl = "Null", CreateDate = DateTime.Now,
            ISBNNumber = "978-3-16-148411-7", BookCover = new BookCover(),  BookWritterId = 2, BookWriter = new BookWriter() },
            new Book {Id = 3, Title = "SQL Server Fundamentals", Description = "Learn the basics of SQL Server database management.", ImageUrl ="Null", BookUrl = "Null", CreateDate = DateTime.Now,
            ISBNNumber ="978-3-16-148412-4", BookCover = new BookCover(),  BookWritterId = 3, BookWriter = new BookWriter() },
            new Book {Id = 4, Title = "Design Patterns in C#", Description = "An introduction to common design patterns used in C#.", ImageUrl ="Null", BookUrl = "Null", CreateDate = DateTime.Now,
            ISBNNumber = "978-3-16-148413-1", BookCover = new BookCover(),  BookWritterId = 4, BookWriter = new BookWriter() },
            new Book {Id = 5, Title = "Entity Framework Core Guide", Description = "A complete guide to Entity Framework Core.", ImageUrl ="Null", BookUrl = "Null", CreateDate = DateTime.Now,
            ISBNNumber = "978-3-16-148414-8", BookCover = new BookCover(),  BookWritterId = 5, BookWriter = new BookWriter() }, 
        };

        [HttpGet]
        public IEnumerable<Book> SetGetLocal()
        {
            return listofBooks;
        }

        [HttpDelete]
        public void Delete(int Id)
        {
            listofBooks.RemoveAt(Id);
        }

        [HttpPost]
        public void Post([FromBody]Book book)
        {
            listofBooks.Add(book);
        }

        //public static List<BookWriter> listofBooksWriter = new List<BookWriter>()
        //{
        //new BookWriter {Id = 1, Name = "Ehtashamul", Gender = "Male", ImageUrl = "Null", ImageFile = "Null" },
        //new BookWriter {Id = 2, Name = "Ehtramul", Gender = "Male", ImageUrl = "Null", ImageFile = "Null" },
        //new BookWriter {Id = 3, Name = "Nada", Gender = "Female", ImageUrl = "Null", ImageFile = "Null" },
        //new BookWriter {Id = 4, Name = "Nabiha", Gender = "Female", ImageUrl = "Null", ImageFile = "Null" },
        //new BookWriter {Id = 5, Name = "Tashim", Gender = "Male", ImageUrl = "Null", ImageFile = "Null" },

        //};

        //[HttpGet]
        //public IEnumerable<BookWriter> SetGetLocal()
        //{
        //return listofBooksWriter;
        //}

        //[HttpDelete]
        //public void Delete(int Id)
        //{
        //listofBooksWriter.RemoveAt(Id);
        //}

        //[HttpPost]
        //public void Post([FromBody] BookWriter bookWriter)
        //{
        //listofBooksWriter.Add(bookWriter);
        //}


        //------------------------------------------------------------------------------------------
        //all code of Category.
        //public static List<Category> listofCategories = new List<Category>()
        //{
        //new Category {Id = 1,Title = "Apple", DisplayOrder = 1, CreateDate = DateTime.Now},
        //new Category {Id = 2,Title = "Samsung", DisplayOrder = 2, CreateDate = DateTime.Now},
        //new Category {Id = 3,Title = "Nothing", DisplayOrder = 3, CreateDate = DateTime.Now},
        //new Category {Id = 4,Title = "OnePlus", DisplayOrder = 4, CreateDate = DateTime.Now},
        //new Category {Id = 5,Title = "Vivo", DisplayOrder = 5, CreateDate = DateTime.Now},

        //};

        //[HttpGet]
        //public IEnumerable<Category> SetGetLocal()
        //{
        //return listofCategories;
        //}

        //[HttpGet("[action]/{Id}")]

        //public IEnumerable<Category> GetGetAll()
        //{
        //return listofCategories;
        //}

        //[HttpDelete]
        //public void Delete(int Id)
        //{
        //listofCategories.RemoveAt(Id);
        //}

        //[HttpPost]
        //public void Post([FromBody]Category category)
        //{
        //listofCategories.Add(category);
        //}

        //[HttpGet("{Id}")]

        //public IEnumerable<Category> GetGetAll()
        //{
        //return listofCategories[;
        //}


        //[HttpPost]
        //public async  void Post([FromBody] Category category)
        //{
        //string connectionString = @"DefaultEndpointsProtocol=https;AccountName=shopingstore;AccountKey=FxIdaSoS6CLRGsfdxGoNzVrvAGmywj6Lnobedi3NN+1u/G5NOOY+QilHmEqG4jd8AGyHvEWfpkgb+ASt4zOcqQ==;EndpointSuffix=core.windows.net";
        //string containerName = "shopingstore";
        //BlobContainerClient containerClient = new BlobContainerClient();


        //await _context.Categories.AddAsync(category);
        //await _context.SaveChangesAsync();
        //return StatusCode(StatusCode.Status201Created);
        //}

        //string connectionString = @"Data Source=DESKTOP-BRCMGPK\SQLEXPRESS;Initial Catalog=TestDB;Integrated Security=True;Encrypt=False";

        //[HttpGet]

        //public IActionResult GetAllEmployeess()
        //{
        //    var Employeess = new List<Employees>();

        //    try
        //    {
        //        using (SqlConnection sqlConnection = new SqlConnection(connectionString))
        //        {
        //            sqlConnection.Open();

        //            SqlCommand sqlCommand = new SqlCommand("select * from Employeess", sqlConnection);

        //            using (SqlDataReader reader = sqlCommand.ExecuteReader())
        //            {
        //                while (reader.Read())
        //                {
        //                    Employeess.Add(new Employees()
        //                    {
        //                        Id = reader.GetInt32(0),
        //                        Name = reader.GetString(1),
        //                        Gender = reader.GetString(2),
        //                        Age = reader.GetInt32(3),
        //                        Salary = reader.GetInt32(4),
        //                        City = reader.GetString(5),
        //                        Email = reader.GetString(6),

        //                    });
        //                }
        //            }
        //        }

        //        return Ok(Employeess);
        //    }

        //    catch (Exception ex)
        //    {
        //        return StatusCode(500, "Internal server error: " + ex.Message);
        //    }
        //}


        //private ApplicationDBContext _context;

        //public CategoryController( ApplicationDBContext context)
        //{
        //_context = context;
        //}


        //public static List<Category> listofCategories = new List<Category>()
        //{
        //new Category {Id = 1,Title = "Apple", DisplayOrder = 1},
        //new Category {Id = 2,Title = "Samsung", DisplayOrder = 2},
        //new Category {Id = 3,Title = "Nothing", DisplayOrder = 3},
        //new Category {Id = 4,Title = "OnePlus", DisplayOrder = 4},
        //new Category {Id = 5,Title = "Vivo", DisplayOrder = 5},

        //};

        //[HttpGet]
        //public IEnumerable<Employee> Get()
        //{
        //var result = _context.Employee;

        //return result;
        //}


        //[HttpGet]
        //public IEnumerable<Category> SetGetLocal()
        //{
        //return listofCategories;
        //}

        //[HttpPost]
        //public void Post([FromBody]Category category)
        //{
        //listofCategories.Add(category);
        //}


        //[HttpPut("{Id}")]
        //public void put(int Id, [FromBody]Category category)
        //{
        //listofCategories[Id] = category; 
        //}

        //[HttpDelete]
        //public void Delete(int Id)
        //{
        //listofCategories.RemoveAt(Id);
        //}
    }
}
