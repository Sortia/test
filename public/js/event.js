$('form').on('submit', function () {
    event.preventDefault();

    let name = $('#inputName').val();
    let surname = $('#inputSurname').val();
    let email = $('#inputEmail').val();
    let phone = $('#inputPhone').val();
    let education = $('#inputEducationLevel').val();

    $.ajax({
        type: "GET",
        url: "http://test/event/1/registration",
        async: true,
        dataType: 'json',
        data: {
            name: name,
            surname: surname,
            email: email,
            phone: phone,
            education: education,
        },
        success: function (data) {
            console.log(data);
            alert("Вы успешно зарегистрировались на мероприятие!");
        },
        error: function (data) {
            console.log(data);
            alert('Упс! Что-то пошло не так, попробуйте еще раз');
        }
    });
});