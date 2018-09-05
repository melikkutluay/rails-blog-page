// JS only for the switc
//
console.log("dfsdf");
$(document).ready(function () {
    $("#switch-view").click(function(){
        console.log("fdsfsf");
        $(this).find("button").toggleClass("active");
        $(".article-wrapper").toggleClass("bloc col-xs-12 col-xs-4");
    });
});