
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

      $(".transpose-minus").click(function() {
            $("pre").css("font-size","-=1");
      });

      $("span:contains("D")").hover(function() {
            $(this).css("color","red");
      });

});

