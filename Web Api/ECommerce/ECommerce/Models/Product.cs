namespace ECommerce.Models
{
    public class Product
    {
        public int Product_id { get; set; }
        public string Product_name { get; set; }
        public decimal Price { get; set; }
        public int Quantity { get; set; }
        public string Category { get; set; }
    }
}
