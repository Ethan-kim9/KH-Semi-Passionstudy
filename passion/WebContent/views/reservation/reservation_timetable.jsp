<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>:: 예약표 ::</title>
    <link rel="stylesheet" href="../../resources/CSS/PageStyles/reservation/timeTable.css" />
  </head>
  <body>
   	<div class="time_table">
   		<div class="time_header">
   			<span class="sub_title">
   				<span ng-bind="$ctrl.getDateBarText()">12. 31.(목), 시간을 선택하세요</span>
   			</span>
   		</div>
   		<div class="time_body">
   			<div class="am" ng-if="$ctrl.amTimeSchedules.length">
   				<span class="tit">오전</span>
   				<ul class="lst_time"> 
					<li class="item" ng-repeat="timeSchedule in $ctrl.amTimeSchedules" ng-class="{ last : $ctrl.amTimeSchedules.length === $index + 1 }"> 
						<a href="#" data-time-index="0" class="anchor" ng-class="{ 'none' : $ctrl.isDisabledTime(timeSchedule), 'on' : $ctrl.isSelectedTime(timeSchedule) }" ng-click="$ctrl.selectTime({ timeSchedule })"> 
							<span class="time_info_box"> 
								<span ng-bind="$ctrl.getStartTime(timeSchedule)">8:00</span> <!----> 
							</span> 
						</a> 
					</li><!---->
					<li class="item" ng-repeat="timeSchedule in $ctrl.amTimeSchedules" ng-class="{ last : $ctrl.amTimeSchedules.length === $index + 1 }"> 
						<a href="#" data-time-index="1" class="anchor" ng-class="{ 'none' : $ctrl.isDisabledTime(timeSchedule), 'on' : $ctrl.isSelectedTime(timeSchedule) }" ng-click="$ctrl.selectTime({ timeSchedule })"> 
							<span class="time_info_box"> 
								<span ng-bind="$ctrl.getStartTime(timeSchedule)">8:30</span> <!----> 
							</span> 
						</a> 
					</li><!---->
					<li class="item" ng-repeat="timeSchedule in $ctrl.amTimeSchedules" ng-class="{ last : $ctrl.amTimeSchedules.length === $index + 1 }"> 
						<a href="#" data-time-index="2" class="anchor" ng-class="{ 'none' : $ctrl.isDisabledTime(timeSchedule), 'on' : $ctrl.isSelectedTime(timeSchedule) }" ng-click="$ctrl.selectTime({ timeSchedule })"> 
							<span class="time_info_box"> 
								<span ng-bind="$ctrl.getStartTime(timeSchedule)">9:00</span> <!----> 
							</span> 
						</a> 
					</li><!---->
					<li class="item" ng-repeat="timeSchedule in $ctrl.amTimeSchedules" ng-class="{ last : $ctrl.amTimeSchedules.length === $index + 1 }"> 
						<a href="#" data-time-index="3" class="anchor" ng-class="{ 'none' : $ctrl.isDisabledTime(timeSchedule), 'on' : $ctrl.isSelectedTime(timeSchedule) }" ng-click="$ctrl.selectTime({ timeSchedule })"> 
							<span class="time_info_box"> 
								<span ng-bind="$ctrl.getStartTime(timeSchedule)">9:30</span> <!----> 
							</span> 
						</a> 
					</li><!---->
					<li class="item" ng-repeat="timeSchedule in $ctrl.amTimeSchedules" ng-class="{ last : $ctrl.amTimeSchedules.length === $index + 1 }"> 
						<a href="#" data-time-index="4" class="anchor" ng-class="{ 'none' : $ctrl.isDisabledTime(timeSchedule), 'on' : $ctrl.isSelectedTime(timeSchedule) }" ng-click="$ctrl.selectTime({ timeSchedule })"> 
							<span class="time_info_box"> 
								<span ng-bind="$ctrl.getStartTime(timeSchedule)">10:00</span> <!----> 
							</span> 
						</a> 
					</li><!---->
					<li class="item" ng-repeat="timeSchedule in $ctrl.amTimeSchedules" ng-class="{ last : $ctrl.amTimeSchedules.length === $index + 1 }"> 
						<a href="#" data-time-index="5" class="anchor" ng-class="{ 'none' : $ctrl.isDisabledTime(timeSchedule), 'on' : $ctrl.isSelectedTime(timeSchedule) }" ng-click="$ctrl.selectTime({ timeSchedule })"> 
							<span class="time_info_box"> 
								<span ng-bind="$ctrl.getStartTime(timeSchedule)">10:30</span> <!----> 
							</span> 
						</a> 
					</li><!---->
					<li class="item" ng-repeat="timeSchedule in $ctrl.amTimeSchedules" ng-class="{ last : $ctrl.amTimeSchedules.length === $index + 1 }"> 
						<a href="#" data-time-index="6" class="anchor" ng-class="{ 'none' : $ctrl.isDisabledTime(timeSchedule), 'on' : $ctrl.isSelectedTime(timeSchedule) }" ng-click="$ctrl.selectTime({ timeSchedule })"> 
							<span class="time_info_box"> 
								<span ng-bind="$ctrl.getStartTime(timeSchedule)">11:00</span> <!----> 
							</span> 
						</a> 
					</li><!---->
					<li class="item last" ng-repeat="timeSchedule in $ctrl.amTimeSchedules" ng-class="{ last : $ctrl.amTimeSchedules.length === $index + 1 }"> 
						<a href="#" data-time-index="7" class="anchor" ng-class="{ 'none' : $ctrl.isDisabledTime(timeSchedule), 'on' : $ctrl.isSelectedTime(timeSchedule) }" ng-click="$ctrl.selectTime({ timeSchedule })"> 
							<span class="time_info_box"> 
								<span ng-bind="$ctrl.getStartTime(timeSchedule)">11:30</span> <!----> 
							</span> 
						</a> 
					</li><!----> 
				</ul>
   			</div>
   			
   			<div class="pm" ng-if="$ctrl.pmTimeSchedules.length">
   				<span class="tit">오후</span>
   				<ul class="lst_time">
   					<li class="item" ng-repeat="timeSchedule in $ctrl.pmTimeSchedules" ng-class="{ last : $ctrl.pmTimeSchedules.length === $index + 1 }"> 
   						<a href="#" data-time-index="0" class="anchor" ng-class="{ 'none' : $ctrl.isDisabledTime(timeSchedule), 'on' : $ctrl.isSelectedTime(timeSchedule) }" ng-click="$ctrl.selectTime({ timeSchedule })"> 
   							<span class="time_info_box"> 
   								<span ng-bind="$ctrl.getStartTime(timeSchedule)">12:00</span> <!----> 
   							</span> 
   						</a> 
   					</li>
   					<li class="item" ng-repeat="timeSchedule in $ctrl.pmTimeSchedules" ng-class="{ last : $ctrl.pmTimeSchedules.length === $index + 1 }"> 
   						<a href="#" data-time-index="1" class="anchor" ng-class="{ 'none' : $ctrl.isDisabledTime(timeSchedule), 'on' : $ctrl.isSelectedTime(timeSchedule) }" ng-click="$ctrl.selectTime({ timeSchedule })"> 
   							<span class="time_info_box"> 
   								<span ng-bind="$ctrl.getStartTime(timeSchedule)">12:30</span> <!----> 
   							</span> 
   						</a> 
   					</li>
   					<li class="item" ng-repeat="timeSchedule in $ctrl.pmTimeSchedules" ng-class="{ last : $ctrl.pmTimeSchedules.length === $index + 1 }"> 
   						<a href="#" data-time-index="2" class="anchor" ng-class="{ 'none' : $ctrl.isDisabledTime(timeSchedule), 'on' : $ctrl.isSelectedTime(timeSchedule) }" ng-click="$ctrl.selectTime({ timeSchedule })"> 
   							<span class="time_info_box"> 
   								<span ng-bind="$ctrl.getStartTime(timeSchedule)">13:00</span> <!----> 
   							</span> 
   						</a> 
   					</li>
   					<li class="item" ng-repeat="timeSchedule in $ctrl.pmTimeSchedules" ng-class="{ last : $ctrl.pmTimeSchedules.length === $index + 1 }"> 
   						<a href="#" data-time-index="3" class="anchor" ng-class="{ 'none' : $ctrl.isDisabledTime(timeSchedule), 'on' : $ctrl.isSelectedTime(timeSchedule) }" ng-click="$ctrl.selectTime({ timeSchedule })"> 
   							<span class="time_info_box"> 
   								<span ng-bind="$ctrl.getStartTime(timeSchedule)">13:30</span> <!----> 
   							</span> 
   						</a> 
   					</li>
   					<li class="item" ng-repeat="timeSchedule in $ctrl.pmTimeSchedules" ng-class="{ last : $ctrl.pmTimeSchedules.length === $index + 1 }"> 
   						<a href="#" data-time-index="4" class="anchor" ng-class="{ 'none' : $ctrl.isDisabledTime(timeSchedule), 'on' : $ctrl.isSelectedTime(timeSchedule) }" ng-click="$ctrl.selectTime({ timeSchedule })"> 
   							<span class="time_info_box"> 
   								<span ng-bind="$ctrl.getStartTime(timeSchedule)">14:00</span> <!----> 
   							</span> 
   						</a> 
   					</li>
   					<li class="item" ng-repeat="timeSchedule in $ctrl.pmTimeSchedules" ng-class="{ last : $ctrl.pmTimeSchedules.length === $index + 1 }"> 
   						<a href="#" data-time-index="5" class="anchor" ng-class="{ 'none' : $ctrl.isDisabledTime(timeSchedule), 'on' : $ctrl.isSelectedTime(timeSchedule) }" ng-click="$ctrl.selectTime({ timeSchedule })"> 
   							<span class="time_info_box"> 
   								<span ng-bind="$ctrl.getStartTime(timeSchedule)">14:30</span> <!----> 
   							</span> 
   						</a> 
   					</li>
   					<li class="item" ng-repeat="timeSchedule in $ctrl.pmTimeSchedules" ng-class="{ last : $ctrl.pmTimeSchedules.length === $index + 1 }"> 
   						<a href="#" data-time-index="6" class="anchor" ng-class="{ 'none' : $ctrl.isDisabledTime(timeSchedule), 'on' : $ctrl.isSelectedTime(timeSchedule) }" ng-click="$ctrl.selectTime({ timeSchedule })"> 
   							<span class="time_info_box"> 
   								<span ng-bind="$ctrl.getStartTime(timeSchedule)">15:00</span> <!----> 
   							</span> 
   						</a> 
   					</li>
   					<li class="item" ng-repeat="timeSchedule in $ctrl.pmTimeSchedules" ng-class="{ last : $ctrl.pmTimeSchedules.length === $index + 1 }"> 
   						<a href="#" data-time-index="7" class="anchor" ng-class="{ 'none' : $ctrl.isDisabledTime(timeSchedule), 'on' : $ctrl.isSelectedTime(timeSchedule) }" ng-click="$ctrl.selectTime({ timeSchedule })"> 
   							<span class="time_info_box"> 
   								<span ng-bind="$ctrl.getStartTime(timeSchedule)">15:30</span> <!----> 
   							</span> 
   						</a> 
   					</li>
   					<li class="item" ng-repeat="timeSchedule in $ctrl.pmTimeSchedules" ng-class="{ last : $ctrl.pmTimeSchedules.length === $index + 1 }"> 
   						<a href="#" data-time-index="8" class="anchor" ng-class="{ 'none' : $ctrl.isDisabledTime(timeSchedule), 'on' : $ctrl.isSelectedTime(timeSchedule) }" ng-click="$ctrl.selectTime({ timeSchedule })"> 
   							<span class="time_info_box"> 
   								<span ng-bind="$ctrl.getStartTime(timeSchedule)">16:00</span> <!----> 
   							</span> 
   						</a> 
   					</li>
   					<li class="item" ng-repeat="timeSchedule in $ctrl.pmTimeSchedules" ng-class="{ last : $ctrl.pmTimeSchedules.length === $index + 1 }"> 
   						<a href="#" data-time-index="9" class="anchor" ng-class="{ 'none' : $ctrl.isDisabledTime(timeSchedule), 'on' : $ctrl.isSelectedTime(timeSchedule) }" ng-click="$ctrl.selectTime({ timeSchedule })"> 
   							<span class="time_info_box"> 
   								<span ng-bind="$ctrl.getStartTime(timeSchedule)">16:30</span> <!----> 
   							</span> 
   						</a> 
   					</li>
   					<li class="item" ng-repeat="timeSchedule in $ctrl.pmTimeSchedules" ng-class="{ last : $ctrl.pmTimeSchedules.length === $index + 1 }"> 
   						<a href="#" data-time-index="10" class="anchor" ng-class="{ 'none' : $ctrl.isDisabledTime(timeSchedule), 'on' : $ctrl.isSelectedTime(timeSchedule) }" ng-click="$ctrl.selectTime({ timeSchedule })"> 
   							<span class="time_info_box"> 
   								<span ng-bind="$ctrl.getStartTime(timeSchedule)">17:00</span> <!----> 
   							</span> 
   						</a> 
   					</li>
   					<li class="item" ng-repeat="timeSchedule in $ctrl.pmTimeSchedules" ng-class="{ last : $ctrl.pmTimeSchedules.length === $index + 1 }"> 
   						<a href="#" data-time-index="11" class="anchor" ng-class="{ 'none' : $ctrl.isDisabledTime(timeSchedule), 'on' : $ctrl.isSelectedTime(timeSchedule) }" ng-click="$ctrl.selectTime({ timeSchedule })"> 
   							<span class="time_info_box"> 
   								<span ng-bind="$ctrl.getStartTime(timeSchedule)">17:30</span> <!----> 
   							</span> 
   						</a> 
   					</li>
   					<li class="item" ng-repeat="timeSchedule in $ctrl.pmTimeSchedules" ng-class="{ last : $ctrl.pmTimeSchedules.length === $index + 1 }"> 
   						<a href="#" data-time-index="12" class="anchor" ng-class="{ 'none' : $ctrl.isDisabledTime(timeSchedule), 'on' : $ctrl.isSelectedTime(timeSchedule) }" ng-click="$ctrl.selectTime({ timeSchedule })"> 
   							<span class="time_info_box"> 
   								<span ng-bind="$ctrl.getStartTime(timeSchedule)">18:00</span> <!----> 
   							</span> 
   						</a> 
   					</li>
   					<li class="item" ng-repeat="timeSchedule in $ctrl.pmTimeSchedules" ng-class="{ last : $ctrl.pmTimeSchedules.length === $index + 1 }"> 
   						<a href="#" data-time-index="13" class="anchor" ng-class="{ 'none' : $ctrl.isDisabledTime(timeSchedule), 'on' : $ctrl.isSelectedTime(timeSchedule) }" ng-click="$ctrl.selectTime({ timeSchedule })"> 
   							<span class="time_info_box"> 
   								<span ng-bind="$ctrl.getStartTime(timeSchedule)">18:30</span> <!----> 
   							</span> 
   						</a> 
   					</li>
   					<li class="item" ng-repeat="timeSchedule in $ctrl.pmTimeSchedules" ng-class="{ last : $ctrl.pmTimeSchedules.length === $index + 1 }"> 
   						<a href="#" data-time-index="14" class="anchor" ng-class="{ 'none' : $ctrl.isDisabledTime(timeSchedule), 'on' : $ctrl.isSelectedTime(timeSchedule) }" ng-click="$ctrl.selectTime({ timeSchedule })"> 
   							<span class="time_info_box"> 
   								<span ng-bind="$ctrl.getStartTime(timeSchedule)">19:00</span> <!----> 
   							</span> 
   						</a> 
   					</li>
   					<li class="item" ng-repeat="timeSchedule in $ctrl.pmTimeSchedules" ng-class="{ last : $ctrl.pmTimeSchedules.length === $index + 1 }"> 
   						<a href="#" data-time-index="15" class="anchor" ng-class="{ 'none' : $ctrl.isDisabledTime(timeSchedule), 'on' : $ctrl.isSelectedTime(timeSchedule) }" ng-click="$ctrl.selectTime({ timeSchedule })"> 
   							<span class="time_info_box"> 
   								<span ng-bind="$ctrl.getStartTime(timeSchedule)">19:30</span> <!----> 
   							</span> 
   						</a> 
   					</li>
   					<li class="item" ng-repeat="timeSchedule in $ctrl.pmTimeSchedules" ng-class="{ last : $ctrl.pmTimeSchedules.length === $index + 1 }"> 
   						<a href="#" data-time-index="16" class="anchor" ng-class="{ 'none' : $ctrl.isDisabledTime(timeSchedule), 'on' : $ctrl.isSelectedTime(timeSchedule) }" ng-click="$ctrl.selectTime({ timeSchedule })"> 
   							<span class="time_info_box"> 
   								<span ng-bind="$ctrl.getStartTime(timeSchedule)">20:00</span> <!----> 
   							</span> 
   						</a> 
   					</li>
   					<li class="item" ng-repeat="timeSchedule in $ctrl.pmTimeSchedules" ng-class="{ last : $ctrl.pmTimeSchedules.length === $index + 1 }"> 
   						<a href="#" data-time-index="17" class="anchor" ng-class="{ 'none' : $ctrl.isDisabledTime(timeSchedule), 'on' : $ctrl.isSelectedTime(timeSchedule) }" ng-click="$ctrl.selectTime({ timeSchedule })"> 
   							<span class="time_info_box"> 
   								<span ng-bind="$ctrl.getStartTime(timeSchedule)">20:30</span> <!----> 
   							</span> 
   						</a> 
   					</li>
   					<li class="item last" ng-repeat="timeSchedule in $ctrl.pmTimeSchedules" ng-class="{ last : $ctrl.pmTimeSchedules.length === $index + 1 }"> 
   						<a href="#" data-time-index="18" class="anchor" ng-class="{ 'none' : $ctrl.isDisabledTime(timeSchedule), 'on' : $ctrl.isSelectedTime(timeSchedule) }" ng-click="$ctrl.selectTime({ timeSchedule })"> 
   							<span class="time_info_box"> 
   								<span ng-bind="$ctrl.getStartTime(timeSchedule)">21:00</span> <!----> 
   							</span> 
   						</a> 
   					</li>
   				</ul>
   			</div>
   			<div class="calendar_info" ng-if="$ctrl.timeSchedules &amp;&amp; !$ctrl.search" style=""> 
   				<ul class="list_calendar_info"> 
   					<li class="item"> 
   						<span class="date_label color2"></span> 
   						<span>선택</span> 
   					</li> 
   					
   					<li class="item"> 
   						<span class="date_label color3"></span> 
   						<span>불가</span> 
   					</li> 
   				</ul>	
   			</div>
   		</div>
   		<div class="time_footer">
   			<button type="button" class="btn_srch" ng-class="{ on : $ctrl.isValidSelection() }" ng-if="$ctrl.search" ng-click="$event.preventDefault(); $ctrl.search()" data-tst_search_time_click="1" style=""> 
   				<span> 	
   					<span ng-bind="$ctrl.wordSet.BOOKING_TYPE.name">예약</span>
   					시간 선택
   				</span> 
   			</button>
   			
   		</div>
   	</div>
  </body>
  <script src="../../resources/JS/timeTable.js"></script>
</html>
