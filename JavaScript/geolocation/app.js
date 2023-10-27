const findMe = () => {
  const success = (position) => {
    console.log(position);
  };

  const error = () => {
    console.log("unable to find location");
  };
  navigator.geolocation.getCurrentPosition(success, error);
};

document.querySelector(".find").addEventListener("click", findMe);
