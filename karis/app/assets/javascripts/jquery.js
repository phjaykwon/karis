$(document).ready(function(){
      $(".up").on("click",function(){
            $("span").text(function(i,txt){
                  switch(txt){
                        case "A" : $(this).text("A#"); break;
                        case "A7" : $(this).text("A#7"); break;
                        case "Asus" : $(this).text("A#sus"); break;                       
                        case "A#" : $(this).text("B"); break;
                        case "A#7" : $(this).text("B7"); break;
                        case "A#sus" : $(this).text("Bsus"); break;
                        case "B" : $(this).text("C"); break;
                        case "B7" : $(this).text("C7"); break;
                        case "Bsus" : $(this).text("Csus"); break;
                        case "C" : $(this).text("C#"); break;
                        case "C7" : $(this).text("C#7"); break;
                        case "Csus" : $(this).text("C#sus"); break;
                        case "C#" : $(this).text("D"); break;
                        case "C#7" : $(this).text("D7"); break;
                        case "C#sus" : $(this).text("Dsus"); break;
                        case "D" : $(this).text("D#"); break;
                        case "D7" : $(this).text("D#7"); break;
                        case "Dsus" : $(this).text("D#sus"); break;
                        case "D#" : $(this).text("E"); break;
                        case "D#7" : $(this).text("E7"); break;
                        case "D#sus" : $(this).text("Esus"); break;
                        case "E" : $(this).text("F"); break;
                        case "E7" : $(this).text("F7"); break;
                        case "Esus" : $(this).text("Fsus"); break;
                        case "F" : $(this).text("F#"); break;
                        case "F7" : $(this).text("F#7"); break;
                        case "Fsus" : $(this).text("F#sus"); break;
                        case "F#" : $(this).text("G"); break;
                        case "F#7" : $(this).text("G7"); break;
                        case "F#sus" : $(this).text("Gsus"); break;
                        case "G" : $(this).text("G#"); break;
                        case "G7" : $(this).text("G#7"); break;
                        case "Gsus" : $(this).text("G#sus"); break;
                        case "G#" : $(this).text("A"); break;
                        case "G#7" : $(this).text("A7"); break;
                        case "G#sus" : $(this).text("Asus"); break;
                        case "Am" : $(this).text("A#m"); break;
                        case "Am7" : $(this).text("A#m7"); break;
                        case "A#m" : $(this).text("Bm"); break;
                        case "A#m7" : $(this).text("Bm7"); break;
                        case "Bm" : $(this).text("Cm"); break;
                        case "Bm7" : $(this).text("Cm7"); break;
                        case "Cm" : $(this).text("C#m"); break;
                        case "Cm7" : $(this).text("C#m7"); break;
                        case "C#m" : $(this).text("Dm"); break;
                        case "C#m7" : $(this).text("Dm7"); break;
                        case "Dm" : $(this).text("D#m"); break;
                        case "Dm7" : $(this).text("D#m7"); break;
                        case "D#m" : $(this).text("Em"); break;
                        case "D#m7" : $(this).text("Em7"); break;
                        case "Em" : $(this).text("Fm"); break;
                        case "Em7" : $(this).text("Fm7"); break;
                        case "Fm" : $(this).text("F#m"); break;
                        case "Fm7" : $(this).text("F#m7"); break;
                        case "F#m" : $(this).text("Gm"); break;
                        case "F#m7" : $(this).text("Gm7"); break;
                        case "Gm" : $(this).text("G#m"); break;
                        case "Gm7" : $(this).text("G#m7"); break;
                        case "G#m" : $(this).text("Am"); break;
                        case "G#m7" : $(this).text("Am7"); break;
                  }
            });
      });


      $(".down").on("click",function(){
            $("span").text(function(i,txt){
                  switch(txt){
                        case "A" : $(this).text("G#"); break;
                        case "A7" : $(this).text("G#7"); break;
                        case "Asus" : $(this).text("G#sus"); break;
                        case "A#" : $(this).text("A"); break;
                        case "A#7" : $(this).text("A7"); break;
                        case "A#sus" : $(this).text("Asus"); break;
                        case "B" : $(this).text("A#"); break;
                        case "B7" : $(this).text("A#7"); break;
                        case "Bsus" : $(this).text("A#sus"); break;
                        case "C" : $(this).text("B"); break;
                        case "C7" : $(this).text("B7"); break;
                        case "Csus" : $(this).text("Bsus"); break;
                        case "C#" : $(this).text("C"); break;
                        case "C#7" : $(this).text("C7"); break;
                        case "C#sus" : $(this).text("Csus"); break;
                        case "D" : $(this).text("C#"); break;
                        case "D7" : $(this).text("C#7"); break;
                        case "Dsus" : $(this).text("C#sus"); break;
                        case "D#" : $(this).text("D"); break;
                        case "D#7" : $(this).text("D7"); break;
                        case "D#sus" : $(this).text("Dsus"); break;
                        case "E" : $(this).text("D#"); break;
                        case "E7" : $(this).text("D#7"); break;
                        case "Esus" : $(this).text("D#sus"); break;
                        case "F" : $(this).text("E"); break;
                        case "F7" : $(this).text("E7"); break;
                        case "Fsus" : $(this).text("Esus"); break;
                        case "F#" : $(this).text("F"); break;
                        case "F#7" : $(this).text("F7"); break;
                        case "F#sus" : $(this).text("Fsus"); break;
                        case "G" : $(this).text("F#"); break;
                        case "G7" : $(this).text("F#7"); break;
                        case "Gsus" : $(this).text("F#sus"); break;
                        case "G#" : $(this).text("G"); break;
                        case "G#7" : $(this).text("Gsus"); break;
                        case "G#sus" : $(this).text("G7"); break;
                        case "Am" : $(this).text("G#m"); break;
                        case "Am7" : $(this).text("G#m7"); break;
                        case "A#m" : $(this).text("Am"); break;
                        case "A#m7" : $(this).text("Am7"); break;
                        case "Bm" : $(this).text("A#m"); break;
                        case "Bm7" : $(this).text("A#m7"); break;
                        case "Cm" : $(this).text("Bm"); break;
                        case "Cm7" : $(this).text("Bm7"); break;
                        case "C#m" : $(this).text("Cm"); break;
                        case "C#m7" : $(this).text("Cm7"); break;
                        case "Dm" : $(this).text("C#m"); break;
                        case "Dm7" : $(this).text("C#m7"); break;
                        case "D#m" : $(this).text("Dm"); break;
                        case "D#m7" : $(this).text("Dm7"); break;
                        case "Em" : $(this).text("D#m"); break;
                        case "Em7" : $(this).text("D#m7"); break;
                        case "Fm" : $(this).text("Em"); break;
                        case "Fm7" : $(this).text("Em7"); break;
                        case "F#m" : $(this).text("Fm"); break;
                        case "F#m7" : $(this).text("Fm7"); break;
                        case "Gm" : $(this).text("F#m"); break;
                        case "Gm7" : $(this).text("F#m7"); break;
                        case "G#m" : $(this).text("Gm"); break;
                        case "G#m7" : $(this).text("Gm7"); break;
                  }
            });
      });
      
      $(".plus").click(function() {
            $(".main").css("font-size","+=1");
      });

      $(".minus").click(function() {
            $(".main").css("font-size","-=1");
      });
});





