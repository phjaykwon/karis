
$(document).ready(function(){


      $(".transpose-up").on("click",function(){
            $("span.chord").text(function(i,txt) {
                  $(this).text(ChordsUtils.transposeChord(txt, 1));
            });
      });


      $(".transpose-down").on("click",function(){
            $("span.chord").text(function(i,txt){
                  $(this).text(ChordsUtils.transposeChord(txt, -1));
            });
      });

      $(".transpose-plus").click(function() {
            $("pre").css("font-size","+=1");
      });

      $(".transpose-minus").click(function() {
            $("pre").css("font-size","-=1");
      });

      $(".favorites.transpose-is-favorited").on("click", function() {
        var chord_id = parseInt($('#chord_id').val());
        if ($('.favorites.function-text').text().trim() === "Favorite") {
          $.ajax({
            type: "POST",
            url: '/favorites/create',
            data: {
              'favorite': {
                'chord_id': chord_id
              }
            },
            success: function() {
              $('.favorites.function-text').text("Un-favorite");
            }
          });
        } else {
          $.ajax({
            type: "DELETE",
            url: '/favorites/remove',
            data: {
              'favorite': {
                'chord_id': chord_id
              }
            },
            success: function() {
              $('.favorites.function-text').text("Favorite");
            }
          });
        }
      });

});
