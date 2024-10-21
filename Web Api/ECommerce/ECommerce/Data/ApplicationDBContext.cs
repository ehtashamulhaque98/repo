using ECommerce.Models;
using Microsoft.EntityFrameworkCore;

namespace ECommerce.Data
{
    public class ApplicationDBContext : DbContext
    {
        public ApplicationDBContext(DbContextOptions<ApplicationDBContext> options)
            : base(options)
        {
            
        }

        public DbSet<Category> Categories { get; set; }
        public DbSet<Product> Products { get; set; }
        public DbSet<Employee> Employee { get; set; }

        public DbSet<Book> Books { get; set; }

        public DbSet<BookCover> BookCovers { get; set; }

        public DbSet<BookWriter> BookWriters { get; set; }



    }
}
