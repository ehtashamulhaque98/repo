using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ECommerce.Models
{
    public class Book
    {
        public int Id { get; set; }
        
        public string Title { get; set; }

        public string Description { get; set; }

        public string ImageUrl { get; set; }

        public string BookUrl { get; set; }

        public DateTime CreateDate { get; set; }

        public string ISBNNumber { get; set; }
        [NotMapped]
        public IFormFile ImageFile { get; set; }
        [NotMapped]
        public IFormFile BookFile { get; set; }

        public int BookCoverId { get; set; }

        public BookCover BookCover { get; set; }

        public int BookWritterId { get; set; }

        public BookWriter BookWriter { get; set; }
    }
}
