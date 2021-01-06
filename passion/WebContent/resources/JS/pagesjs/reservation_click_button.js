/**
 * 
 */

function getID(id) { return document.getElementById(id) }

var reservation_click_button = function() {
	var first_time_btn = getID('first_time_btn');
	var second_time_btn = getID('second_time_btn');
	var third_time_btn = getID('third_time_btn');
	var fourth_time_btn = getID('fourth_time_btn');
	var fifth_time_btn = getID('fifth_time_btn');
	var last_time_btn = getID('last_time_btn');

	var selectCalendarDate = getID('selectCalendarDate');
	var firstTimeData = getID('firstTimeData');
	var secondTimeData = getID('secondTimeData');
	var thirdTimeData = getID('thirdTimeData');
	var fourthTimeData = getID('fourthTimeData');
	var fifthTimeData = getID('fifthTimeData');
	var lastTimeData = getID('lastTimeData');

	let today = new Date();
	let year = today.getFullYear(); // 년도
	let month = today.getMonth() + 1;  // 월
	let date = today.getDate();  // 날짜
	let hours = today.getHours(); // 시
	var thisTime = year + autoLeftPad(month, 2) + autoLeftPad(date, 2) + autoLeftPad(hours, 2);//현재 날짜시간 일렬로
	var thisTimeInt = thisTime * 1;
	var firstBtnCheck = (selectCalendarDate.value + '08') * 1;
	var secondBtnCheck = (selectCalendarDate.value + '10') * 1;
	var thirdBtnCheck = (selectCalendarDate.value + '12') * 1;
	var fourthBtnCheck = (selectCalendarDate.value + '15') * 1;
	var fifthBtnCheck = (selectCalendarDate.value + '17') * 1;
	var lastBtnCheck = (selectCalendarDate.value + '19') * 1;

	firstTimeData.value = '';
	secondTimeData.value = '';
	thirdTimeData.value = '';
	fourthTimeData.value = '';
	fifthTimeData.value = '';
	lastTimeData.value = '';

	reservation_check_click_time()

	first_time_btn.classList.remove('break_time');
	second_time_btn.classList.remove('break_time');
	third_time_btn.classList.remove('break_time');
	fourth_time_btn.classList.remove('break_time');
	fifth_time_btn.classList.remove('break_time');
	last_time_btn.classList.remove('break_time');

	first_time_btn.classList.remove('time_button_checked');
	second_time_btn.classList.remove('time_button_checked');
	third_time_btn.classList.remove('time_button_checked');
	fourth_time_btn.classList.remove('time_button_checked');
	fifth_time_btn.classList.remove('time_button_checked');
	last_time_btn.classList.remove('time_button_checked');

	if (first_time_btn != null) {
		if ((firstBtnCheck - thisTimeInt) < 3) {
			first_time_btn.classList.add('break_time');
			first_time_btn.onclick = function() {
				firstTimeData.value = '';
				reservation_check_click_time()
			}
		} else {
			first_time_btn.onclick = function() {
				if (first_time_btn.classList.contains('time_button_checked')) {
					first_time_btn.classList.remove('time_button_checked');
					firstTimeData.value = '';
					reservation_check_click_time()
				}
				else {
					first_time_btn.classList.add('time_button_checked');
					firstTimeData.value = selectCalendarDate.value + '1';
					reservation_check_click_time()
				}

			}
		}
	}

	if (second_time_btn != null) {
		if ((secondBtnCheck - thisTimeInt) < 3) {
			second_time_btn.classList.add('break_time');
			second_time_btn.onclick = function() {
				secondTimeData.value = '';
				reservation_check_click_time()
			}
		} else {
			second_time_btn.onclick = function() {
				if (second_time_btn.classList.contains('time_button_checked')) {
					second_time_btn.classList.remove('time_button_checked');
					secondTimeData.value = '';
					reservation_check_click_time()
				}
				else {
					second_time_btn.classList.add('time_button_checked');
					secondTimeData.value = selectCalendarDate.value + '2';
					reservation_check_click_time()
				}

			}
		}
	}

	if (third_time_btn != null) {
		if ((thirdBtnCheck - thisTimeInt) < 3) {
			third_time_btn.classList.add('break_time');
			third_time_btn.onclick = function() {
				thirdTimeData.value = '';
				reservation_check_click_time()
			}
		} else {
			third_time_btn.onclick = function() {
				if (third_time_btn.classList.contains('time_button_checked')) {
					third_time_btn.classList.remove('time_button_checked');
					thirdTimeData.value = '';
					reservation_check_click_time()
				}
				else {
					third_time_btn.classList.add('time_button_checked');
					thirdTimeData.value = selectCalendarDate.value + '3';
					reservation_check_click_time()
				}

			}
		}
	}

	if (fourth_time_btn != null) {
		if ((fourthBtnCheck - thisTimeInt) < 3) {
			fourth_time_btn.classList.add('break_time');
			fourth_time_btn.onclick = function() {
				fourthTimeData.value = '';
				reservation_check_click_time()
			}
		} else {
			fourth_time_btn.onclick = function() {
				if (fourth_time_btn.classList.contains('time_button_checked')) {
					fourth_time_btn.classList.remove('time_button_checked');
					fourthTimeData.value = '';
					reservation_check_click_time()
				}
				else {
					fourth_time_btn.classList.add('time_button_checked');
					fourthTimeData.value = selectCalendarDate.value + '4';
					reservation_check_click_time()
				}

			}
		}
	}

	if (fifth_time_btn != null) {
		if ((fifthBtnCheck - thisTimeInt) < 3) {
			fifth_time_btn.classList.add('break_time');
			fifth_time_btn.onclick = function() {
				fifthTimeData.value = '';
				reservation_check_click_time()
			}
		} else {
			fifth_time_btn.onclick = function() {
				if (fifth_time_btn.classList.contains('time_button_checked')) {
					fifth_time_btn.classList.remove('time_button_checked');
					fifthTimeData.value = '';
					reservation_check_click_time()
				}
				else {
					fifth_time_btn.classList.add('time_button_checked');
					fifthTimeData.value = selectCalendarDate.value + '5';
					reservation_check_click_time()
				}

			}
		}
	}

	if (last_time_btn != null) {
		if ((lastBtnCheck - thisTimeInt) < 3) {
			last_time_btn.classList.add('break_time');
			last_time_btn.onclick = function() {
				lastTimeData.value = '';
				reservation_check_click_time()
			}
		} else {
			last_time_btn.onclick = function() {
				if (last_time_btn.classList.contains('time_button_checked')) {
					last_time_btn.classList.remove('time_button_checked');
					lastTimeData.value = '';
					reservation_check_click_time()
				}
				else {
					last_time_btn.classList.add('time_button_checked');
					lastTimeData.value = selectCalendarDate.value + '6';
					reservation_check_click_time()
				}

			}
		}
	}
}
function autoLeftPad(num, digit) {
	if (String(num).length < digit) {
		num = new Array(digit - String(num).length + 1).join("0") + num;
	}
	return num;
}

function reservation_check_click_time() {
	var firstTimeData = getID('firstTimeData');
	var secondTimeData = getID('secondTimeData');
	var thirdTimeData = getID('thirdTimeData');
	var fourthTimeData = getID('fourthTimeData');
	var fifthTimeData = getID('fifthTimeData');
	var lastTimeData = getID('lastTimeData');

	var totalTimeData = (firstTimeData.value + secondTimeData.value + thirdTimeData.value + fourthTimeData.value + fifthTimeData.value + lastTimeData.value + '1') * 1;
	if (totalTimeData == 1) {
		roominfo_to_userinfo.disabled = 'disabled';
	} else {
		roominfo_to_userinfo.disabled = false;
	}
}
