<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>E-mail</title>
</head>
<body>
<h2>У вас новая заявка!</h2>
    <table>
        <th>Поле</th>
        <th>Данные</th>
        <tr>
            <th>Имя</th>
            <th>{{$formData['name']}}</th>
        </tr>
        <tr>
            <th>Фамилия</th>
            <th>{{$formData['surname']}}</th>
        </tr>
        <tr>
            <th>E-mail</th>
            <th>{{$formData['email']}}</th>
        </tr>
        <tr>
            <th>Телефон</th>
            <th>{{$formData['phone']}}</th>
        </tr>
        <tr>
            <th>Образование</th>
            <th>{{$formData['education_level']}}</th>
        </tr>
    </table>
</body>
</html>