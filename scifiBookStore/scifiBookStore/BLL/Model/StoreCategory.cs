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
        [Key]
        public int CategoryID { get; set; }
        public string Name { get; set; }

        public String Description { get; set; }
        public string ShortDescription { get; set; }

        public DateTime LastUpdated { get; set; }

        //relationship property
        public virtual ICollection<Product> Products { get; set; }
    }
}