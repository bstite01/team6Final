using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.Data.Entity;

namespace scifiBookStore.BLL.Model
{
    public class Product
    {
        [Key]
        public int productID { get; set; }

        public string Name { get; set; }

        public String Description { get; set; }

        public string ShortDescription { get; set; }

        public decimal Price { get; set; }

        public int UnitsInStock { get; set; }

        public string LogoPictureThumbFile { get; set; }

        public DateTime LastUpdated { get; set; }

        //The following describe relationship properties
        public int CategoryID { get; set; }
        public virtual StoreCategory Category { get; set; }

        //Picture relationship
        public virtual ICollection<ProductPicture> Pictures { get; set; }
    }
}