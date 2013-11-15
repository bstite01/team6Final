using System.Collections.Generic;
using System.Data.Entity;
using scifiBookStore.BLL.Model;
using System;

namespace scifiBookStore.BLL.Model
{
    public class ProductModelInitializer : DropCreateDatabaseIfModelChanges<ProductContext>
    {
        protected override void Seed(ProductContext context)
        {
            GetCategories().ForEach(c => context.Categories.Add(c));
            GetProducts().ForEach(p => context.Products.Add(p));
        }

        private static List<StoreCategory> GetCategories()
        {
            var categories = new List<StoreCategory>
            {
                new StoreCategory
                {
                    CategoryID = 1,
                    Name = "Astronomy",
                    Description = "Astronomy textbooks and other related products",
                    ShortDescription = "Astronomy Products",
                    LastUpdated = DateTime.Now
                },
                new StoreCategory
                {
                    CategoryID = 2,
                    Name = "Astrophysics",
                    Description = "Astrophysics textbooks and other related products",
                    ShortDescription = "Astrophysics Products",
                    LastUpdated = DateTime.Now
                 },
            };
            return categories;
        }

        private static List<Product> GetProducts()
        {
            var products = new List<Product>
            {
                new Product
                {
                    productID = 1,
                    Name = "21st Century Astronomy",
                    Description = "Textbook on Astronomy for the 21st Century",
                    ShortDescription = "Written by Steven Desch and Donald Terndrup",
                    Price = 199.99,
                    UnitsInStock = 10,
                    LastUpdated = DateTime.Now,
                    CategoryID = 1

                },

                new Product
                {
                    productID = 2,
                    Name = "The Story of Helium and the Birth of Astrophysics",
                    Description = "Historial look into the field of Astrophysics",
                    ShortDescription = "Written by Biman B. Nath",
                    Price = 197.99,
                    UnitsInStock = 10,
                    LastUpdated = DateTime.Now,
                    CategoryID = 2
                }

            };

            return products;
        }
    }
}