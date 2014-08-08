var keys = '';
var lf = [697, 770, 852, 941];		    
var hf = [1209, 1336, 1477, 1633];         
var buf = require('fs').readFileSync(process.argv[2]);

for (var i = 45; i < 16000; i += 1600) {
    var key = [Number.MAX_VALUE, ''];

    [].forEach.call('123A456B789C*0#D', function(x, idx) {
	var delta = 0

	for (var j = 300; j < 400; ++j) {
            var coef = Math.PI * 2 *j / 8000;
	    var t = (Math.sin(coef * lf[parseInt(idx / 4)])
		   + Math.sin(coef * hf[idx % 4]));

	    delta += Math.abs(t * 125 + 125 - buf[i + j]);
	}
	
	if (delta < key[0]) key = [delta, x];
    });

    keys += key[1];
}

console.log(keys.replace(/(...)(...)(....)/, '($1)$2-$3'));
