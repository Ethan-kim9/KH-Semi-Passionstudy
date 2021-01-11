/**
 * 
 */
function getID(id) { return document.getElementById(id) }

var reservation_change_page = function() {

	var usePointCheck = getID('usePointCheck');
	var usePointValue = getID('usePointValue');
	var memPoint = getID('memPoint');
	var usePoint = getID('usePoint');
	var use_point_show = getID('use_point_show');
	var total_price = getID('total_price');
	var totalPrice = getID('totalPrice')




	if (usePointCheck != null) {
		usePointCheck.onclick = function() {
			if (usePointValue.value * 1 <= memPoint.value * 1 && usePointValue.value * 1 <= totalPrice.value * 1) {
				usePoint.value = usePointValue.value;
				use_point_show.value = usePointValue.value;
				total_price.value = totalPrice.value * 1 - usePointValue.value * 1;
				alert(usePoint.value + '포인트를 사용합니다');
			} else {
				alert('올바른 포인트를 입력하세요');
			}
		}
	}
}
