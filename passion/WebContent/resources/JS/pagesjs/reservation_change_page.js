/**
 * 
 */

//주석처리 난 부분은 js를 인시 못하는 버그때문에 임시로 페이지 내에서 처리함

function getID(id) { return document.getElementById(id) }

var reservation_change_page = function() {
	var url = 'index.jsp?inc=./views/reservation/';
	
//	var formSqlData = document.formSqlData;
	var formInfoData = document.formInfoData;
	
//	var roominfo_to_userinfo = getID('roominfo_to_userinfo');
	var userinfo_to_payment = getID('userinfo_to_payment');

//	if (roominfo_to_userinfo != null) {
//		roominfo_to_userinfo.onclick = function() {
//			formSqlData.action = url + 'reservation_userinfo.jsp';
//			formSqlData.submit();
//		}
//	}

	if (userinfo_to_payment != null) {
		userinfo_to_payment.onclick = function() {
			formInfoData.action = url + 'reservation_payment.jsp';
			formInfoData.submit();
		}
	}
}