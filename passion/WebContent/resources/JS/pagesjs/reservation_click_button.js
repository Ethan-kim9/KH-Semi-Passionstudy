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
	
	if(first_time_btn != null){
		first_time_btn.onclick = function(){
			firstTimeData.value = "1";
			alert(selectCalendarDate.value);
		}
	}
}