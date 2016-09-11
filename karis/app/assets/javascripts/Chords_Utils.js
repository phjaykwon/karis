ChordsUtils = function () {
    var wrapWords = function(str, tmpl) {
			return str.replace(/\w+/g, tmpl || "<span>$&</span>");
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
				line = wrapWords(line);
			} 				
			new_text += line + "\n";
		});

		return new_text;
    }
};

ChordsUtils = new ChordsUtils();