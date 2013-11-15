using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using scifiBookStore.BLL.Model;
using System.Web.ModelBinding;

namespace scifiBookStore
{
    public partial class ProductsList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IQueryable<Product> GetProducts(
                                [QueryString("id")] int? categoryId,
                                [RouteData] string Name)
        {
            var _db = new scifiBookStore.BLL.Model.ProductContext();
            IQueryable<Product> query = _db.Products;

            if (categoryId.HasValue && categoryId > 0)
            {
                query = query.Where(p => p.CategoryID == categoryId);
            }

            if (!String.IsNullOrEmpty(Name))
            {
                query = query.Where(p =>
                                    String.Compare(p.Category.Name,
                                    Name) == 0);
            }
            return query;
        }
    }
}