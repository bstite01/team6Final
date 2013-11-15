using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using scifiBookStore.BLL.Model;
using System.Web.ModelBinding;

namespace scifiBookStore.SiteAdministration
{
    public partial class ProductDetails : System.Web.UI.Page
    {
        private readonly ProductContext _db = new ProductContext();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public Product GetProduct([QueryString("id")] int? id)
        {
            return _db.Products.Find(id);
        }

    }
}