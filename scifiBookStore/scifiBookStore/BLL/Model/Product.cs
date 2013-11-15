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
        [Key, Display(Name = "Id"), ScaffoldColumn(false)]
        public int productID { get; set; }

        [Required, StringLength(100), Display(Name = "Name")]
        public string Name { get; set; }

        [Required, StringLength(10000), Display(Name = "Description"),
        DataType(DataType.MultilineText)]
        public String Description { get; set; }

        [Display(Name = "Short Description")]
        public string ShortDescription { get; set; }

        [Display(Name = "List Price"), DataType("Double"), Range(0.00, 500.00)]
        public double? Price { get; set; }

        [Display(Name = "Units"), DataType("Integer"), Range(0, 500)]
        public int UnitsInStock { get; set; }

        public string Image { get; set; }

        public DateTime LastUpdated { get; set; }

        //The following describe relationship properties
        public int? CategoryID { get; set; }
        public virtual StoreCategory Category { get; set; }
    }
}