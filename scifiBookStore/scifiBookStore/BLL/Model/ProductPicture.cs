using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using System.ComponentModel.DataAnnotations;

namespace scifiBookStore.BLL.Model
{
    public class ProductPicture
    {
        [Key]
        public int PictureID { get; set; }

        public string Title { get; set; }

        public string Description { get; set; }
        public string ShortDescription { get; set; }

        public string FileLocation { get; set; }
        public string ThumbFileLocation { get; set; }

        public bool USeAsLogoPicture { get; set; }

        public DateTime CreatedOn { get; set; }

        public string BackgroundColor { get; set; }

        //Relationship properties
        public int ProductID { get; set; }
        public virtual Product Product { get; set; }
    }
}