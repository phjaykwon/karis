;(function(ChordsUtils, $, undefined) {

	var scale = ["C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "A#", "B"];


    var addSpans = function(line, valid_chords) {
    	var new_line = "";
    	var words = line.split(" ");

		for (var i = 0; i < words.length; i++) {
			var new_word = "";
			if (words[i].length == 0) {
				new_word = " ";
			} else if (isAChord(words[i], valid_chords)) {
				new_word = "<span class=\"chord\">" +  words[i] + "</span> "
			} else {
				new_word = words[i] + " ";
			}
			new_line += new_word;
		}
    	return new_line;
	}

	var hasChords = function(line, valid_chords) {
		var words = line.split(" ");
		words = $.grep(words, function(n) { 
			return (n == 0 || n) && n !== "";
		});

		var chord_count = 0;
		for (var i = 0; i < words.length; i++) {
			if (isAChord(words[i], valid_chords)) {
				chord_count += 1;
			}
		}
		return chord_count > 0 && chord_count >= Math.floor(words.length/2);
	}

	var isAChord = function(txt, valid_chords) {
		var indiv_chords = txt.split("/");
		if (indiv_chords.length == 1) {
			return $.inArray(txt, valid_chords) != -1;
		} else if (indiv_chords.length == 2) {
			return $.inArray(indiv_chords[0], valid_chords) != -1 && $.inArray(indiv_chords[1], valid_chords) != -1;
		} else {
			return false;
		}

	}

    ChordsUtils.updateContent = function(text, valid_chords) {
    	var lines = text.split("\n");
		var new_text = "";
		$.each(lines, function(i, line) {
			if (hasChords(line, valid_chords)) {
				line = addSpans(line, valid_chords);
			} 				
			new_text += line + "\n";
		});

		return new_text;
    }
    ChordsUtils.transposeChord = function(chord, amount) {
            return chord.replace(/[CDEFGAB]#?/g,
                  function(match) {
                        var i = (scale.indexOf(match) + amount) % scale.length;
                        return scale[ i < 0 ? i + scale.length : i ];
                  });
      }
})(window.ChordsUtils = window.ChordsUtils || {}, jQuery);
