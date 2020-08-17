var input;
function searchBySku() {
  	var filter = input.value.toUpperCase();
  	var table = document.getElementById("inventory");
 	var tr = table.getElementsByTagName("tr");
  	for (i = 1; i < tr.length; i++) {
    // Hide the row initially.
    	tr[i].style.display = "none";
     	skuCell = tr[i].getElementsByClassName("sku");
      	if (skuCell && skuCell[0].innerText.indexOf(filter) > -1) {
          tr[i].style.display = "";
        } 
    }
}

var input = document.getElementById("sku-filter");
input.addEventListener('keyup', searchBySku)