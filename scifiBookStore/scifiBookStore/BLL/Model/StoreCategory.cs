using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.Data.Entity;


namespace scifiBookStore.BLL.Model
{
    public class StoreCategory
    {
        [Key, ScaffoldColumn(false)]
        public int CategoryID { get; set; }

        [Required, StringLength(100), Display(Name = "Name")]
        public string Name { get; set; }

        [Display(Name = "Product Description")]
        public String Description { get; set; }

        public string ShortDescription { get; set; }

        public DateTime LastUpdated { get; set; }

        //relationship property
        public virtual ICollection<Product> Products { get; set; }
    }
}