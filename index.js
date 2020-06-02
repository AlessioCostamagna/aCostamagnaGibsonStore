$(document).ready(function(){
    let wrapper = $("#guitarsWrapper");
    let btnLoginMain =$("#btnLoginMain");
    $("#loggedBar").hide();
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
                    text : "BUY",
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
                    text : "BUY",
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
    
    $(btnLoginMain).on("click",function(){
        if(!btnLoginMain.disabled){
            window.location.href ="./login.html";
        }
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
