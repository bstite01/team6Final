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

        public IQueryable<Product> GetProduct(
                        [QueryString("ProductID")] int? productId,
                        [RouteData] string productName)
        {
            var _db = new scifiBookStore.BLL.Model.ProductContext();
            IQueryable<Product> query = _db.Products;
            if (productId.HasValue && productId > 0)
            {
                query = query.Where(p => p.productID == productId);
            }
            else if (!String.IsNullOrEmpty(productName))
            {
                query = query.Where(p =>
                          String.Compare(p.Name, productName) == 0);
            }
            else
            {
                query = null;
            }
            return query;
        }

    }
}