$(document).ready(function(){
    let wrapper = $("#guitarsWrapper");
    let btnLoginMain =$("#btnLoginMain");
    $("#cardBtnBuy").prop("disabled",true);
    $("#cart").hide();
    $(btnLoginMain).on("click",function(){
         window.location.href ="./login.html";
    })
    let _richiestaLogin = inviaRichiesta("GET","server/loged.php");
    _richiestaLogin.done(function(data) {
        $("#cart").show();
        $(btnLoginMain).off().text("Logout").on("click",function(){
            let _richiestaLogin = inviaRichiesta("GET","server/logout.php");
            _richiestaLogin.fail(function(jqXHR, test_status, str_error){
                window.location.href ="./index.html";
            })
        })
        $("#cardBtnBuy").prop("disabled",false);
    });
    _richiestaLogin.fail(function(jqXHR, test_status, str_error){

    })

    $("#selectContain div").on("click",function(){
        wrapper.children().remove();
        let correntName = $(this).find("p").text();
        let request = inviaRichiesta("GET","server/getGuitars.php", {"model":correntName, "offset":0});
        request.done(function(data){
            let _divTitle = $("<div>");
            _divTitle.attr("id","cardTitle");
            _divTitle.appendTo(wrapper);
            let _Title =$("<h1>");
            _Title.attr("id","title");
            _Title.text("Explore The "+correntName+" Collection");
            _Title.appendTo(_divTitle);
            for(let i=0;i<data.length;i++){
                let _card = $("<div>",{
                    addClass:"col-sm-4",
                    appendTo:wrapper,
                }).attr("id","card" )
                let _divName = $("<div>",{
                    text : data[i]["version"],
                    appendTo: _card
                }).attr("id","cardName")

                let _divPrice = $("<div>",{
                    text : "$"+data[i]["price"],
                    appendTo: _card
                }).attr("id","cardPrice")

                let _img = $("<img>",{
                    src : data[i]["img"],
                    appendTo:_card
                }).attr("id","cardImg")
                let _btnBuy = $("<button>",{
                    text : "Add Cart",
                    appendTo: _card,
                    click : function(){
                        let addCart = inviaRichiesta("GET","server/addCart.php",{"id" : data[i]["id"]});
                        addCart.done(function(){
                            alert("Articolo aggiunto al carrello");
                        })
                        addCart.fail(function(){
                            alert("Devi registrarti per acquistare il prodotto");
                        })
                    }
                }).attr("id","cardBtnBuy")
                let _divAnchor = $("<div>",{
                    text : data[i]["options"]+" Collection",
                    appendTo: _card
                }).attr("id","cardAnchor");
            }
            
        })
        request.fail(error);
    })
    $(".dropdown a").on("click",function(){
        wrapper.children().remove();
        let correntName = $(this).attr("id");
        let request = inviaRichiesta("GET","server/getOptions.php", {"options":correntName, "offset":0});
        request.done(function(data){
            let _divTitle = $("<div>");
            _divTitle.attr("id","cardTitle");
            _divTitle.appendTo(wrapper);
            let _Title =$("<h1>");
            _Title.attr("id","title");
            _Title.text("Explore The "+correntName+" Collection");
            _Title.appendTo(_divTitle);
            for(let i=0;i<data.length;i++){
                let _card = $("<div>",{
                    addClass:"col-sm-4",
                    appendTo:wrapper,
                }).attr("id","card" )
                let _divName = $("<div>",{
                    text : data[i]["version"],
                    appendTo: _card
                }).attr("id","cardName")

                let _divPrice = $("<div>",{
                    text : "$"+data[i]["price"],
                    appendTo: _card
                }).attr("id","cardPrice")

                let _img = $("<img>",{
                    src : data[i]["img"],
                    appendTo:_card
                }).attr("id","cardImg")
                let _btnBuy = $("<button>",{
                    text : "Add Cart",
                    appendTo: _card
                }).attr("id","cardBtnBuy")
                let _divAnchor = $("<div>",{
                    text : data[i]["options"]+" Collection",
                    appendTo: _card
                }).attr("id","cardAnchor");
            }
        })
        request.fail(error);
    })
    
    $("#cart").on("click",function(){
        let tot = 0;
        wrapper.children().remove();
        let request = inviaRichiesta("GET","server/getCart.php");
        request.done(function(data){
            console.log(data);
            for(let i=0;i<data.length;i++){
                tot+=parseInt(data[i]["price"]);
                let _card = $("<div>",{
                    addClass:"col-sm-4",
                    appendTo:wrapper,
                }).attr("id","card" )
                let _divName = $("<div>",{
                    text : data[i]["version"],
                    appendTo: _card
                }).attr("id","cardName")

                let _divPrice = $("<div>",{
                    text : "$"+data[i]["price"],
                    appendTo: _card
                }).attr("id","cardPrice")

                let _img = $("<img>",{
                    src : data[i]["img"],
                    appendTo:_card
                }).attr("id","cardImg")
                let _divAnchor = $("<div>",{
                    text : data[i]["options"]+" Collection",
                    appendTo: _card
                }).attr("id","cardAnchor");
                
            }
            let _divConferm = $("<div>");
            _divConferm.attr("id","divConferm");
            _divConferm.appendTo(wrapper);
            let lblPrice = $("<label>",{
                text : "Importo: $"+tot,
                appendTo: _divConferm
            }).attr("id","lblTot");
            let _btnBuy = $("<button>",{
                text : "Conferm",
                appendTo: _divConferm,
                click : function(){
                    let addCart = inviaRichiesta("GET","server/buyCart.php");
                    addCart.done(function(){
                        alert("Acquisto effettuato");
                        wrapper.children().remove();
                    })
                }
            }).attr("id","btnConferm");

        })
        request.fail(error);
    })
    function error(jqXHR, test_status, str_error) {
        alert(jqXHR.responseText);
    }//CONTROLLO ERRORE MINIMO E REDIRECT A PAGINA DI LOGIN
    
    function inviaRichiesta(method, url, parameters = "") { //WRAPPER DELLA FUNZIONE JQUERY $.ajax
        return $.ajax({
            type: method,
            url: url,
            data: parameters,
            contentType: "application/x-www-form-urlencoded;charset=utf-8",
            dataType: "json",
            timeout: 5000,
        });
    }
})
