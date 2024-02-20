<%@page contentType="text/html" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Thanks!</title>
        <link rel="stylesheet" href="styles/main.css" type="text/css"/>
    </head>
    <body>
        <h1>Thanks for your order</h1>
        <p>Here is the information that you entered:</p>
        <span class="info">
        <label>Name:</label>
        <span>${user.fullName}</span><br>
        <label>Email:</label>
        <span>${user.email}</span><br>
        <table>
                <tr>
                    <th>Cover</th>
                    <th>Title</th>
                    <th>Price</th>
                </tr>
                <!--Checks to see if Infinity Gauntlet was selected-->
                <c:if test="${gauntlet != null}">
                <tr>
                    <td><img src="https://i.annihil.us/u/prod/marvel/i/mg/3/10/51f69304023ed/portrait_uncanny.jpg" alt="The Infinity Gauntlet Picture"></td>
                    <td><div class="title">The Infinity Gauntlet</div></td>
                    <td>$16.99</td>
                </tr>
                </c:if>
                <!--Checks to see if Ms. Marvel Vol. 1 was selected-->
                <c:if test="${ms != null}">
                <tr>
                    <td><img src="https://i.annihil.us/u/prod/marvel/i/mg/7/50/59e66f5a876c1/portrait_uncanny.jpg" alt="Ms. Marvel Picture"></td>
                    <td><div class="title">Ms. Marvel Vol. 1</div></td>
                    <td>$12.98</td>
                </tr>
                </c:if>
                <!--Checks to see if Captain Marvel Vol. 1 was selected-->
                <c:if test="${captain != null}">
                <tr>
                    <td><img src="https://i.annihil.us/u/prod/marvel/i/mg/a/10/538e0cfe954c8/portrait_uncanny.jpg" alt="Captain Mavel Picture"></td>
                    <td><div class="title">Captain Marvel Vol. 1</div></td>
                    <td>$14.32</td>
                </tr>
                </c:if>
                <!--Checks to see if Ant-Man: Season 1 was selected-->
                <c:if test="${ant != null}">
                <tr>
                    <td><img src="https://i.annihil.us/u/prod/marvel/i/mg/f/50/56cdcd246afe3/portrait_uncanny.jpg" alt="Ant-Man Picture"></td>
                    <td><div class="title">Ant-Man: Season One</div><br></td>
                    <td>$7.08</td>
                </tr>
                </c:if>
            </table>
        <p>To order another book, click on the Back button 
            in your browser or the Return button shown below.</p>
        </span>
        <form action="" method="get">
            <input type="hidden" name="action" value="join">
            <input type="submit" id ="return" value="Return">
        </form>
    </body>
</html>
