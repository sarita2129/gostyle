$(document).ready(function(){
  // $('.astar').click(function(e){
  //   // e.preventDefault;
  //   alert($(this).attr("name"));
  //
  // });
  $('a.astar').on('click', function(e){
    e.preventDefault();
    console.log($(this).parent());
    console.log($(this).prevUntil("p"));
    const prevstar = $(this).prevUntil("p");
    // const star = Number($(this).attr("name"));
    // for(const i = 1; i <= star; i++)
    // {
    //   starselect
    //
    // }
    // prevstar.$each()
    $.each(prevstar, function(key) {
    $key.addClass("starselect");
  });
});
$("a.astar").on("ajax:success", function(event, xhr, status, error){
  // [data, status, xhr] = event.detail
  $("#new_article").append(xhr.responseText);
}).on("ajax:error", function(event){
  $("#new_article").append("<p>ERROR</p>");
});



});
