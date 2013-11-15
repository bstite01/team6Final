/********************************************************************
 * OrderDetail.cs
 * The OrderDetail class contains the getter and setters for the order
 * detail information such as the quantity being purchased, unitprice,
 * the products ID, and the username of the purchaser.
 * *******************************************************************/

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace scifiBookStore.BLL.Model
{
    public class OrderDetail
    {
        public int OrderDetailId { get; set; }

        public int OrderId { get; set; }

        public string Username { get; set; }

        public int ProductId { get; set; }

        public int Quantity { get; set; }

        public double? UnitPrice { get; set; }
    }
}