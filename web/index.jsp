<%@page contentType="text/html" pageEncoding="utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Book Order</title>
        <link rel="stylesheet" href="styles/main.css" type="text/css"/>
    </head>
    <body>
        <h1>Book order form</h1>
        <p>Please select book(s) you wish to order.</p>
        <!--Message displays if nothing is selected-->
        <p><i>${message}</i></p>
        <form action="bookOrder" method="post">
            <table>
                <tr>
                    <th>Cover</th>
                    <th>Title</th>
                    <th>Price</th>
                    <th>Add to Cart</th>
                </tr>
                <tr>
                    <td><img src="https://i.annihil.us/u/prod/marvel/i/mg/3/10/51f69304023ed/portrait_uncanny.jpg" alt="The Infinity Gauntlet Picture"></td>
                    <td><div class="title">The Infinity Gauntlet</div></td>
                    <td>$16.99</td>
                    <td><input type="checkbox" name="gauntlet" value="addGauntlent" />&nbsp;</td>
                </tr>
                <tr>
                    <td><img src="https://i.annihil.us/u/prod/marvel/i/mg/7/50/59e66f5a876c1/portrait_uncanny.jpg" alt="Ms. Marvel Picture"></td>
                    <td><div class="title">Ms. Marvel Vol. 1</div></td>
                    <td>$12.98</td>
                    <td><input type="checkbox" name="ms" value="addMs" />&nbsp;</td>
                </tr>
                <tr>
                    <td><img src="https://i.annihil.us/u/prod/marvel/i/mg/a/10/538e0cfe954c8/portrait_uncanny.jpg" alt="Captain Mavel Picture"></td>
                    <td><div class="title">Captain Marvel Vol. 1</div></td>
                    <td>$14.32</td>
                    <td><input type="checkbox" name="captain" value="addCaptain" />&nbsp;</td>
                </tr>
                <tr>
                    <td><img src="https://i.annihil.us/u/prod/marvel/i/mg/f/50/56cdcd246afe3/portrait_uncanny.jpg" alt="Ant-Man Picture"></td>
                    <td><div class="title">Ant-Man: Season One</div><br></td>
                    <td>$7.08</td>
                    <td><input type="checkbox" name="ant" value="addAnt"/>&nbsp;</td>
                </tr>
            </table>
            <br>
            <br>
        
            <input type="hidden" name="action" value="add">
            <label>Name:</label>
            <br>
            <input type="text" name="fullName" required><br>
            <br>
            <label>Email:</label>
            <br>
            <input type="email" name="email" required><br>
            <label>&nbsp;</label>
            <input type="submit" id="submit" class="button" value="Place Order">
        </form>
    </body>
</html>
