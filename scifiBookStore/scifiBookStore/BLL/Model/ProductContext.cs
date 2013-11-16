using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace scifiBookStore.BLL.Model
{
    public class ProductContext : DbContext
    {
        public ProductContext()
            : base("BookStoreConnectionString")
        {
        }

        //these retrieve the table entities
        public DbSet<StoreCategory> Categories { get; set; }
        public DbSet<Product> Products { get; set; }
        public DbSet<CartItem> ShoppingCartItems { get; set; }

        public DbSet<Order> Orders { get; set; }
        public DbSet<OrderDetail> OrderDetails { get; set; }
    }
}