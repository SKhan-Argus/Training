function isTouching(a, b) {
  const aRect = a.getBoundingClientRect();
  const bRect = b.getBoundingClientRect();

  return !(
    aRect.top + aRect.height < bRect.top ||
    aRect.top > bRect.top + bRect.height ||
    aRect.left + aRect.width < bRect.left ||
    aRect.left > bRect.left + bRect.width
  );
}

function extractPos(pos) {
  if (!pos) {
    return 0;
  }
  return parseInt(pos.slice(0, -2));
}

function moveCoin() {
  coin.style.top = `${Math.floor(Math.random() * 700)}px`;
  coin.style.left = `${Math.floor(Math.random() * 1200)}px`;
}

const coin = document.getElementById("coin");
const player = document.getElementById("player");
let score = 0;
moveCoin();

window.addEventListener("keyup", (ev) => {
  let [top, left] = [
    extractPos(getComputedStyle(player).top),
    extractPos(getComputedStyle(player).left),
  ];
  switch (ev.key) {
    case "ArrowUp":
      player.style.top = `${top - 50}px`;
      break;
    case "ArrowDown":
      player.style.top = `${top + 50}px`;
      break;
    case "ArrowLeft":
      player.style.left = `${left - 50}px`;
      player.style.transform = "scale(-1, 1)";
      break;
    case "ArrowRight":
      player.style.left = `${left + 50}px`;
      player.style.transform = "scale(1, 1)";

      break;
    default:
      break;
  }
  if (isTouching(coin, player)) {
    score++;
    moveCoin();
    console.log("Score: " + score);
  }
});
