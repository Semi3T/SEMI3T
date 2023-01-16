const sell_price = document.querySelector("input[name=sell_price]");
const amount = document.querySelector("input[name=amount]");
const add = document.querySelector("input[name=add]");
const minus = document.querySelector("input[name=minus]");
const sum = document.querySelector("input[name=sum]");

function priceToString(price) {
  return price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}

let amountValue = parseInt(amount.value);
let sellValue = parseInt(sell_price.value);
add.addEventListener("click", () => {
  amount.value++;
  amountValue++;
  sum.value = priceToString(sellValue * amountValue) + " 원";
});

minus.addEventListener("click", () => {
  if (amount.value != 1) {
    amount.value--;
    amountValue--;
    sum.value = priceToString(sellValue * amountValue) + " 원";
  }
});

sum.value = priceToString(sell_price.value) + " 원";
