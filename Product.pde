class Product
{
  String name;
  float price;
  float prodlen;
  float prodwid;
  
  Product(TableRow row)
  {
    name = row.getString("Name");
    price = row.getFloat("Price");
  }

// String printline()
 
// {
//   return toString(name +","+ price); 
// }
 
}