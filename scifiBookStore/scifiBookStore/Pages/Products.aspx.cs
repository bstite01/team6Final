using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using scifiBookStore.BLL.Model;

namespace scifiBookStore.SiteAdministration
{
    public partial class Products : System.Web.UI.Page
    {

        //db context object for querying
        private readonly ProductContext _db = new ProductContext();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //returns the products
        public IQueryable<Product> GetProducts()
        {
            return _db.Products;
        }
    }
}