using Microsoft.AspNetCore.Http;
using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ECommerce.Models
{
    public class Category
    {
        public int Id { get; set; }
        [Required]
        public string Title { get; set; }
        [Required]
        public int DisplayOrder { get; set; }

        public DateTime CreateDate { get; set; } = DateTime.Now;
        
        [NotMapped]
        public IFormFile CategoryImage { get; set; }

        public string ImagePath { get; set; }
    }
}
