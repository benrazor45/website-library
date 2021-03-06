/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package BooksQuery;

/**
 *
 * @author Benaya
 */
public class TranQuery {
    public String gets = "SELECT * FROM transaction";
    public String creates = "INSERT INTO transaction (Books_ID, Borrower_Name, " + 
            "Borrow_Date, Return_Date) VALUES (?, ?, ?, ?)";
    public String getById = "SELECT * FROM product where id = ?";   
    public String update = "UPDATE product SET name = ?, product_type = ?, "
            + "stock = ?, price = ?, expired = ? WHERE id = ?";
    public String delete = "DELETE FROM product WHERE id = ?";
}
