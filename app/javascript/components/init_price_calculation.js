const initPriceCalculation = () => {


if (document.querySelector(".calculate-price")) {
  console.log("test");
  const priceCalculation = document.querySelector(".calculate-price");
  priceCalculation.addEventListener("click", (event) => {
    event.preventDefault();
    const startTime = new Date(document.getElementById("booking_start_date").value);
    const endTime = new Date(document.getElementById("booking_end_date").value);
    const coursePrice = document.getElementById("course-price").innerText
    const priceInt = parseInt(coursePrice, 10);
    const milliseconds = endTime - startTime;
    const days = (milliseconds / (60 * 60 * 24 * 1000));
    const result = days * coursePrice;
    document.querySelector(".total-price").style.marginLeft = "15px";
    document.querySelector(".total-days").innerHTML = `${days}<span> Days for:</span >`;
    document.querySelector(".total-price").innerHTML = `${result}<span>€</span >`;
  });
  }
}
export { initPriceCalculation };
