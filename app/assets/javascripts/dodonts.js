$(function(){
  $("#dodont_category_id").change(function(){
    var selectedID = $("#dodont_category_id option:selected").val()
    $.ajax({
      url: "/categories/" + selectedID,
      type: "GET",
    }).done(function(serverData){
      $("#instructions").text(serverData)
    })
  })
})