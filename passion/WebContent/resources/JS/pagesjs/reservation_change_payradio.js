/**
 * 
 */

function getID(id) { return document.getElementById(id) }

var reservation_change_payradio = function() {

	var resMet = getID('resMet');
	var resInfo = getID('resInfo');
	
	var payCard = getID('payCard');
	var payMobile = getID('payMobile');
	var payScene = getID('payScene');
	
	var con = getID('con');
	

	if (payCard != null) {
		payCard.onclick = function() {
		resMet.value = 'C'
		resInfo.value = 'C'
		con.style.display="";
		}
	}
	
	if (payMobile != null) {
		payMobile.onclick = function() {
		resMet.value = 'P'
		resInfo.value = 'O'
		con.style.display="none";
		}
	}

	if (payScene != null) {
		payScene.onclick = function() {
		resMet.value = 'P'
		resInfo.value = 'P'
		con.style.display="none";
		}
	}
}
