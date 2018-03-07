jQuery( function(){

    $('#btn_pesquisa_noticias').click(function (){

        var a = $('input:checkbox');
        var base = "https://www.google.com.br/search?q=";
        var sufix = "&num=100&newwindow=1&safe=active&rlz=1C1GGRV_enBR752BR752&tbm=nws&source=lnt&tbs=qdr:m&sa=X&ved=0ahUKEwih-Mzcz-bWAhUIgpAKHfblASkQpwUIHg&biw=1920&bih=950&dpr=1";

        console.log(a);

        for(var i = 0; i < a.length; i++){
            if(a[i].checked){
                console.log('Este é o label ' + a[i].value );

                var link = base + a[i].value.replace(" ", "+") + sufix;
                window.open(link, '_blank');
            }

        }

    });

});