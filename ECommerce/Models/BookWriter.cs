using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ECommerce.Models
{
    public class BookWriter
    {
        public int Id { get; set; }
        [Required]
        public string Name { get; set; }
        [Required]
        public string Gender { get; set; }
         
        public string ImageUrl { get; set; }
        [NotMapped]

        public string ImageFile { get; set; }

    }
}
