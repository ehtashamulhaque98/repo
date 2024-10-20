using System.ComponentModel.DataAnnotations.Schema;

namespace ECommerce.Models
{
    public class BookCover
    {
        public int Id { get; set; }

        public string Title { get; set; }

        public string ImageUrl { get; set; }
        [NotMapped]
        public IFormFile ImageFile { get; set; }

    }
}
