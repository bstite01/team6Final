using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using scifiBookStore.BLL.Model;

namespace scifiBookStore.SiteAdministration
{
    public partial class Categories : System.Web.UI.Page
    {
        //db context object creation to run queries on
        private readonly ProductContext _db = new ProductContext();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //Return a listing of all the categories in the store
        public IQueryable<StoreCategory> GetCategories()
        {
            return _db.Categories;
        }


    }
}