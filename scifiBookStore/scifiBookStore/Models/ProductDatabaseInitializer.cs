﻿using System.Collections.Generic;
using System.Data.Entity;
using scifiBookStore.Models;

namespace scifiBookStore.Models
{
    public class ProductDatabaseInitializer : DropCreateDatabaseIfModelChanges<ProductContext>
    {
        protected override void Seed(ProductContext context)
        {
            GetCategories().ForEach(c => context.Categories.Add(c));
            GetProducts().ForEach(p => context.Products.Add(p));
        }

        private static List<Category> GetCategories()
        {
            var categories = new List<Category>
            {
                new Category
                {
                    CategoryID = 1,
                    CategoryName = "Astronomy"
                },
                new Category
                {
                    CategoryID = 1,
                    CategoryName = "Astrophysics"
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
                }
            };

            return products;
        }
    }
}