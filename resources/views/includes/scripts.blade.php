<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="{{asset('node_modules/jquery/dist/jquery.js')}}"></script>
<script src="{{asset('node_modules/popper.js/dist/umd/popper.js')}}"> </script>
<script src="{{asset('node_modules/bootstrap/dist/js/bootstrap.js')}}"></script>

<!-- Include JS file. -->

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.25.0/codemirror.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.25.0/mode/xml/xml.min.js"></script>


<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/froala-editor/2.7.5/js/froala_editor.pkgd.min.js"></script>

<script src="{{asset('js/script.js')}}"></script>

<script>
    $(".deletar").on("submit", function(){
        return confirm("Você quer realmente deletar este item?");
    });
</script>