<!DOCTYPE html>
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
	<div class="creditCardForm">
    <div class="heading">
	<title>Checkout page</title>
        
		 <h2><u>Credit Card Information</u><h2>
    </div>
	<body>
 
   
    <div class="payment">
        <form action="Confirmation.jsp" method="post">
		    
            <div class="form-group owner">
                <label for="owner"> Card Owner</label>
                <input type="text" class="form-control" id="owner" required>
            </div>
			<br>
            <div class="form-group CVV">
                <label for="cvv">CVV</label>
                <input type="text" class="form-control" id="cvv" required>
            </div>
			<br>
            <div class="form-group" id="card-number-field">
                <label for="cardNumber">Card Number</label>
                <input type="text" class="form-control" id="cardNumber" required>
            <br>
			<br><label>Payment Options</label>
                <select required>
                    <option value="01">VISA</option>
                    <option value="02">American Express</option>
                    <option value="03">Mastercard</option>
                   
			   </select>
			</div>
           <br>
		   <div class="form-group" id="expiration-date">
                <label>Expiration Date</label>
                <select required>
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
                <select required>
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