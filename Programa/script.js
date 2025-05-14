const video = document.getElementById('video');
const resultado = document.getElementById('resultado');

function reproducir() {
    video.play();
    resultado.textContent = "Estado: Reproduciendo video.";
    console.log("✅ Reproduciendo video.");
}

function pausar() {
    video.pause();
    resultado.textContent = "Estado: Video en pausa.";
    console.log("✅ Video pausado.");
}

function reiniciar() {
    video.currentTime = 0;
    video.play();
    resultado.textContent = "Estado: Video reiniciado.";
    console.log("✅ Video reiniciado.");
}
