// startup code
var text = 'Haga su consulta ahora';
var response;

// ask the problem
ask(text, function (err, result) {
    if (err) {
        document.getElementById('result').innerHTML = 'No se registró su entrada de voz.';
    } else {
        var answer = result.transcript;
        answer = answer.toLowerCase();
        var heroes = ['robot ninja', 'macri', 'para', 'emo', 'soldado 76', 'sombra', 'tracer', 'bastión', 'hanzo', 'bombitas', 'el demonio', 'toblerone', 'widowmaker', 'viva', 'reinhardt', 'cerdo', 'winston', 'saria', 'ana', 'lucio', 'merci', 'simetra', 'zenyatta'];
        var listo = include(heroes, answer);
        if (listo!=-1) {
            response = 'Quieres un counter de: '+listo;
            speak(response);
            document.getElementById('result').innerHTML = response;
            window.location.href = "/ver_heroe.aspx?id=" + (includeid(heroes,answer)+1);
        } else {
            response = 'Una disculpa, no entendí '+answer+'.';
            speak(response);
            document.getElementById('result').innerHTML = response;
        }
    }
})
function include(arr, obj) {
    for(var i=0; i<arr.length; i++) {
        if (arr[i].includes(obj)) return arr[i];
    }
    return -1;
}
function includeid(arr, obj) {
    for (var i = 0; i < arr.length; i++) {
        if (arr[i].includes(obj)) return i;
    }
    return -1;
}
// ask a question and get an answer
function ask(text, callback) {
    // ask question
    speak(text, function () {
        // get answer
        var recognition = new webkitSpeechRecognition();
        recognition.continuous = false;
        recognition.interimResults = false;

        recognition.onend = function (e) {
            if (callback) {
                callback('no results');
            }
        };

        recognition.onresult = function (e) {
            // cancel onend handler
            recognition.onend = null;
            if (callback) {
                callback(null, {
                    transcript: e.results[0][0].transcript,
                    confidence: e.results[0][0].confidence
                });
            }
        }

        // start listening
        recognition.start();
    });
}


// say a message
function speak(text, callback) {
    var u = new SpeechSynthesisUtterance();
    u.text = text;
    u.lang = 'es-MX';

    u.onend = function () {
        if (callback) {
            callback();
        }
    };

    u.onerror = function (e) {
        if (callback) {
            callback(e);
        }
    };

    speechSynthesis.speak(u);
}