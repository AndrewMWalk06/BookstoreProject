<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<%@page import="com.login.*"%>
<%@page import="java.util.ArrayList"%>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
      </table><h1>Checkout</h1><br>
	<style>
	table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
	s-resize: auto;
           }
	   td, th {
    border: 4px solid #101010;
    text-align: left;
    padding: 6px;
            }
tr:hover {background-color:#C8C8C8};
	</style>
	
	<form action="Logout">
		<input type="submit" value="Logout">
	</form>
	<table>
  <tr>
    <th>Select</th>
    <th>ISBN</th>
    <th>Title</th>
	<th>Author</th>
	<th>Edition</th>
    <th>Quantity Available</th>
    <th>Price</th>
  </tr>
  <tr>
    <td><img src="http://t2.gstatic.com/images?q=tbn:ANd9GcTq-fN-ui_ITTjL3ulCkyLstEZCdNvvCHnTRU_J5MWY60WmNIaZ" alt="W3Schools.com" width="104" height="142"><br></td>
    <td>21345</td>
    <td>The Color Of Water</td>
	<td>James Mcbride</td>
	<td>First</td>
	<td>10</td>
	<td>$20.00</td>
  </tr>
  <tr>
    <td><img src="http://www.valuewalk.com/wp-content/uploads/2014/10/The-Innovators.jpg" alt="W3Schools.com" width="104" height="142"><br></td>
    <td>45678</td>
    <td>The Innovators</td>
	<td>Walter Isaacson</td>
	<td>First</td>
	<td>10</td>
	<td>$30.00</td>
  </tr>
  </table>
   <form action = "confirmation.jsp" method = "post">
   <%! String [] bookOption;%>
   <% //Double total =(Double) session.getAttribute("total");
     bookOption = request.getParameterValues("BookOption");
     double total = 0;
     BookDB b = new BookDB();
	 ArrayList<Book> l = b.getBooks(); 
	 
     if (bookOption != null )
     {
    	 for (int i = 0; i<bookOption.length; i++){ 
    		 out.println("<p> Index of Book: "+bookOption[i]+"<p>");
    		 out.println("<p> Price of Book: "+l.get(Integer.parseInt(bookOption[i])).getPrice()+"<p>");
    		 out.println("<p> quantity of Book: "+l.get(Integer.parseInt(bookOption[i])).getQuantity()+"<p>");
    		 
    		 
    		 total += l.get(Integer.parseInt(bookOption[i])).getPrice()*l.get(Integer.parseInt(bookOption[i])).getQuantity(); 
    		 
    		 //total += 2*4;//price*quantity;
    	 
    	 }
    	 out.println("<p> Total payment: "+total+"<p>");
		 
     }
     else{
    	 total += 2*4;
         out.println("<p> BookOption is null<p>");
    	 
     }
   //out.print(request.getAttribute("display Data").toString());
   %>
	 <p>The total amount Due: ${total}<p>
	 
	<div class="creditCardForm">
    <div class="heading">
	<title>Checkout page</title>
        
    </div>
	<body>
         <p><u><strong>Enter Your Shipping Address</strong></u></p>
		 <div class="form-group id ="delivery">
			 <label for ="address"> Address 1</label>
			 <input type="text" class="form-control" id="address 1"></br></br>
			 <label for ="address"> Address 2</label>
			 <input type="text" class="form-control" id="address 2"></br></br>
			 <label for ="address"> City</label>
			 <input type="text" class="form-control" id="City"></br></br>
			 <label for ="address"> State</label>
			 <select name="state">
	<option value="AL">Alabama</option>
	<option value="AK">Alaska</option>
	<option value="AZ">Arizona</option>
	<option value="AR">Arkansas</option>
	<option value="CA">California</option>
	<option value="CO">Colorado</option>
	<option value="CT">Connecticut</option>
	<option value="DE">Delaware</option>
	<option value="DC">District of Columbia</option>
	<option value="FL">Florida</option>
	<option value="GA">Georgia</option>
	<option value="HI">Hawaii</option>
	<option value="ID">Idaho</option>
	<option value="IL">Illinois</option>
	<option value="IN">Indiana</option>
	<option value="IA">Iowa</option>
	<option value="KS">Kansas</option>
	<option value="KY">Kentucky</option>
	<option value="LA">Louisiana</option>
	<option value="ME">Maine</option>
	<option value="MD">Maryland</option>
	<option value="MA">Massachusetts</option>
	<option value="MI">Michigan</option>
	<option value="MN">Minnesota</option>
	<option value="MS">Mississippi</option>
	<option value="MO">Missouri</option>
	<option value="MT">Montana</option>
	<option value="NE">Nebraska</option>
	<option value="NV">Nevada</option>
	<option value="NH">New Hampshire</option>
	<option value="NJ">New Jersey</option>
	<option value="NM">New Mexico</option>
	<option value="NY">New York</option>
	<option value="NC">North Carolina</option>
	<option value="ND">North Dakota</option>
	<option value="OH">Ohio</option>
	<option value="OK">Oklahoma</option>
	<option value="OR">Oregon</option>
	<option value="PA">Pennsylvania</option>
	<option value="RI">Rhode Island</option>
	<option value="SC">South Carolina</option>
	<option value="SD">South Dakota</option>
	<option value="TN">Tennessee</option>
	<option value="TX">Texas</option>
	<option value="UT">Utah</option>
	<option value="VT">Vermont</option>
	<option value="VA">Virginia</option>
	<option value="WA">Washington</option>
	<option value="WV">West Virginia</option>
	<option value="WI">Wisconsin</option>
	<option value="WY">Wyoming</option>
</select></br>
			 </br><label for ="address">Zip-code</label>
			 <input type="text" class="form-control" id="Zip-code"></br></br>
	 </div>
   
		 <p><u><strong>Credit Card Information</strong></u></p>
    <div class="payment">
    
			<br><label>Payment Options</label>
                <select>
                    <option value="01">VISA</option>
                    <option value="02">American Express</option>
                    <option value="03">Mastercard</option>
                   
			   </select>
			</div>
			<br>
            <div class="form-group owner">
                <label for="owner"> First and Last Name</label>
                <input type="text" class="form-control" id="owner">
            </div>
			<br> 
			 
            <div class="form-group" id="card-number-field">
                <label for="cardNumber">Card Number</label>
                <input type="text" class="form-control" id="cardNumber">
            
			
           <br>
           <div class="form-group CVV">
                <label for="cvv">CVV</label>
                <input type="text" class="form-control" id="cvv">
            </div>
			<br>
		   <div class="form-group" id="expiration-date">
                <label>Expiration Date</label>
                <select>
                    <option value="01">January</option>
                    <option value="02">February </option>
                    <option value="03">March</option>
                    <option value="04">April</option>
                    <option value="05">May</option>
                    <option value="06">June</option>
                    <option value="07">July</option>
                    <option value="08">August</option>
                    <option value="09">September</option>
                    <option value="10">October</option>
                    <option value="11">November</option>
                    <option value="12">December</option>
                </select>
                <select>
                    <option value="16"> 2016</option>
                    <option value="17"> 2017</option>
                    <option value="18"> 2018</option>
                    <option value="19"> 2019</option>
                    <option value="20"> 2020</option>
                    <option value="21"> 2021</option>
                </select>
				
            </div>
            <br>
            <div class="form-group" id="pay-now">
                <button type="submit" class="btn btn-default" id="confirm-purchase">Confirm Payment</button>
            </div>
        </form>
    </div>
</div>
</body>
</html>