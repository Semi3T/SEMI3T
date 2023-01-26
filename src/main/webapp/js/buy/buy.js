$(function () {
  const buy_sell_price = document.querySelector(
    "input[name='buy_sell_praice']"
  );
  const buy_fee_praice = document.querySelector("input[name='buy_fee_praice']");
  const buy_sale_praice = document.querySelector(
    "input[name='buy_sale_praice']"
  );
  const Allpraice = document.querySelector("input[name='Allpraice']");

  const buy_sell_int = parseInt(
    buy_sell_price.value.replace(",", "").replace("원", "")
  );
  const buy_fee_int = parseInt(
    buy_fee_praice.value.replace(",", "").replace("원", "")
  );
  const buy_sale_int = parseInt(
    buy_sale_praice.value.replace(",", "").replace("원", "")
  );

  function priceToString(price) {
    return price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
  }

  Allpraice.value = priceToString(buy_sell_int + buy_fee_int - buy_sale_int) + "원";

  $("#sameAddressControl").click(function () {
    let same = this.checked;
    $("#buy-name").val(same ? $("#ship-name").val() : "");
    $("#buy-add").val(same ? $("#ship-add").val() : "");
    $("#buy-phonenumber").val(same ? $("#ship-phonenumber").val() : "");
  });
  if (same == true) {
    $("#buy-product-shipping-box input")
      .filter("input:text")
      .attr("readonly", true)
      .css("opacity", 0.5);
  } else {
    $("#buy-product-shipping-box input")
      .filter("input:text")
      .attr("readonly", false)
      .css("opacity", 1);
  }
});
