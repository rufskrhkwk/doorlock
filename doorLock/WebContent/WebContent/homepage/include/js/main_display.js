$(function(){
    $("#b1").on("mouseenter", function(){
        $("#b1").text("●");
        $("#img1").fadeIn(1000);
        $("#img2").fadeOut(1000);
        $("#img3").fadeOut(1000);
        $("#img4").fadeOut(1000);
    });
    $("#b1").on("mouseleave", function(){
        $("#b1").text("○");
        $("#img1").fadeOut(1000);
    });
    $("#b2").on("mouseenter", function(){
        $("#b2").text("●");
        $("#img2").fadeIn(1000);
        $("#img1").fadeOut(1000);
        $("#img3").fadeOut(1000);
        $("#img4").fadeOut(1000);
    });
    $("#b2").on("mouseleave", function(){
        $("#b2").text("○");
        $("#img2").fadeOut(1000);
    });
    $("#b3").on("mouseenter", function(){
        $("#b3").text("●");
        $("#img3").fadeIn(1000);
        $("#img1").fadeOut(1000);
        $("#img2").fadeOut(1000);
        $("#img4").fadeOut(1000);
    });
    $("#b3").on("mouseleave", function(){
        $("#b3").text("○");
        $("#img3").fadeOut(1000);
    });
});