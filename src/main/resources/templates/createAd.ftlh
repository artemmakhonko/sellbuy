<!DOCTYPE html>
<html>
<head>
    <title>Home page</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>

<body>

<#if submitted?? >
    Your submitted data<br>
    Name: ${ad.title}<br>
    Description: ${ad.description}<br>
    MainPhoto: ${ad.mainPhoto}<br>
    Price: ${ad.price}<br>
    <a href="/show-ads">Show all ads</a>
<#else>
    <h1>Form</h1>
    <form action="/create-ad" method="post">
        <p>Title: <input type="text" name="title"/></p>
        <p>Description: <input type="text" name="description"/></p>
        <p>MainPhoto: <input type="text" name="mainPhoto"/></p>
        <p>Price: <input type="text" name="price"/></p>
            <input type="submit" value="Submit"/> <input type="reset" value="Reset"/>
        </p>
    </form>
</#if>


</body>

</html>