// const button = document.querySelector("#click");

// button.addEventListener("mouseover", () => {
//   button.innerText = "Move Away";
// });

// button.addEventListener("mouseout", () => {
//   button.innerText = "Click Me!";
// });

// window.addEventListener("wheel", () => {
//   console.log("mouse wheel");
// });

// const button2 = document.querySelector("#impossible");
// console.log(button2);
// button2.addEventListener("mouseover", () => {
//   const left1 = Math.floor(Math.random() * 500) + 50;
//   const top1 = Math.floor(Math.random() * 500) + 50;
//   console.log(left1, top1);
//   button2.style.left = `${left1}px`;
//   button2.style.top = `${top1}px`;
// });

// const li = document.getElementsByTagName("li");
// const li2 = document.querySelectorAll("li");
// console.log(li);
// console.log(li2);

const colors = [
  "red",
  "orange",
  "yellow",
  "green",
  "blue",
  "purple",
  "indigo",
  "violet",
];

function printEvent(event) {
  console.log("clicked box " + this.style.backgroundColor);
  console.log(event);
}

for (let color of colors) {
  const box = document.createElement("div");
  box.classList.add("box");
  box.style.backgroundColor = color;
  const boxes = document.querySelector(".boxes");
  boxes.appendChild(box);
  box.addEventListener("click", printEvent);
}

document.body.addEventListener("keypress", (e) => {
  console.log(e);
});
