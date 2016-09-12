ChordsUtils = function () {
    var addSpans = function(line, valid_chords) {
    	var new_line = "";
    	var words = line.split(" ");

		for (var i = 0; i < words.length; i++) {
			var new_word = "";
			if (words[i].length == 0) {
				new_word = " ";
			} else if ($.inArray(words[i], valid_chords) != -1) {
				new_word = "<span class=\"chord\">" +  words[i] + "</span>"
			} else {
				new_word = words[i];
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
			if ($.inArray(words[i], valid_chords) != -1) {
				chord_count += 1;
			}
		}
		return chord_count > 0 && chord_count >= Math.floor(words.length/2);
	}

    this.updateContent = function(text, valid_chords) {
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
    this.transposeChord = function(chord, amount) {
            var scale = ["C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "A#", "B"];
            return chord.replace(/[CDEFGAB]#?/g,
                  function(match) {
                        var i = (scale.indexOf(match) + amount) % scale.length;
                        return scale[ i < 0 ? i + scale.length : i ];
                  });
      }
};

ChordsUtils = new ChordsUtils();