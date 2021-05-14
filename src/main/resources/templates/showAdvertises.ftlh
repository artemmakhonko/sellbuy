<!DOCTYPE html>
<html>
<head>
    <title>Ads</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <style>
        h2 {
            text-align: left;
        }

        th, tr, table {
            text-align: center;
        }

        table, th, tr, td {
            border: 1px solid #000000;
        }

        table {
            width: 100%;
        }

        table {
            border-collapse: collapse;
        }
    </style>

</head>
<body>

<h2>List of Ads</h2>
<table>
    <tr>
        <th>Id</th>
        <th>Title</th>
        <th>MainPhoto</th>
        <th>Price</th>
        <th>Description</th>
    </tr>

    <#list ads as ad>
        <tr>
            <td>${ad.id}</td>
            <td>${ad.title}</td>
            <td>${ad.mainPhoto}</td>
            <td>${ad.price}</td>
            <td>${ad.description}</td>
        </tr>
    </#list>
</table>

</body>
</html>