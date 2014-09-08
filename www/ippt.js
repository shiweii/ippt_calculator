

var lPage = {
	//global variables
	$ageGroup: null,
	$lblAgeGrp: null, $lblSitupPt: null, $lblPushupPt: null, $lblRunPt: null, $lblTtlPt: null,
	$ptsSU: null, $ptsPU: null, $ptsRun: null,
	init: function(){
		//
		var l = lPage;
		//
		l.$lblAgeGrp = $('#lblAgeGrp');
		l.$lblSitupPt = $('#lblptsSU');
		l.$lblPushupPt = $('#lblptsPU');
		l.$lblRunPt = $('#lblptsRun');
		l.$lblTtlPt = $('#lblptTtl');
		//
		// init functions
		l.age.init(function(){
			l.situp.init(function(){
				l.pushup.init(function(){
					l.run.init(function(){
						l.calTotalPts();
					});
				});
			});
		});
		//
	},
	age: {
		$dropdown: null,
		init: function(onComplete){
			//
			var l = lPage;
			var a = lPage.age;
			// dropdown
			a.$dropdown = $("#ddAge");
			//
			// get initial age group
			l.getAgegroup(function(){
				if (onComplete) { onComplete() };
			});
			//
			// on dropdown list change
			a.$dropdown.on('change', function() {
  				l.getAgegroup(function(){
  					l.getSitupPoint(function(){
  						l.getPushupPoint(function(){
  							l.getRunPoint(function(){
  								l.calTotalPts();
  							});
  						});
  					});
  				});
			});
			//
		}
	},
	situp: {
		$dropdown: null,
		init: function(onComplete){
			//
			var l = lPage;
			var su = lPage.situp;
			// dropdown
			su.$dropdown = $("#ddRepSU");

			// pouplate dropdown
			for ( var i = 1; i <= 60; i++ ) {
				if (i == 30){
					su.$dropdown.append("<option value=" + i + " selected>" + i + " reps</option>");
				}else{
    				su.$dropdown.append("<option value=" + i + ">" + i + " reps</option>");
				}
			}
			
			// get intial situp points
			l.getSitupPoint(function(){
				if (onComplete) { onComplete() };
			});
			
			// dropdown list on change
			su.$dropdown.on('change', function() {
  				l.getSitupPoint(function(){
  					// calculate new points
  					l.calTotalPts();
  				});
			});
			//
		}
	},
	pushup: {
		$dropdown: null,
		init: function(onComplete){
			//
			var l = lPage;
			var pu = lPage.pushup;
			// dropdown
			pu.$dropdown = $("#ddRepPU");

			// pouplate dropdown
			for ( var i = 1; i <= 60; i++ ) {
    			if (i == 30){
					pu.$dropdown.append("<option value=" + i + " selected>" + i + " reps</option>");
				}else{
    				pu.$dropdown.append("<option value=" + i + ">" + i + " reps</option>");
				}
			}

			// get intial pushup points
			l.getPushupPoint(function(){
				if (onComplete) { onComplete() };
			});

			// dropdown list on change
			pu.$dropdown.on('change', function() {
  				l.getPushupPoint(function(){
  					// calculate new points
  					l.calTotalPts();
  				});
			});
			//
		}
	},
	run: {
		$dropdownMin: null, $dropdownSec: null,
		init: function(onComplete){
			//
			var l = lPage;
			var r = lPage.run;
			// dropdown
			r.$dropdownMin = $("#ddMins");
			r.$dropdownSec = $("#ddSecs");

			// pouplate mins dropdown
			for ( var i = 8; i <= 18; i++ ) {
    			r.$dropdownMin.append("<option value=" + i + ">" + i + " mins</option>")
			}

			// pouplate secs dropdown
			for ( var i = 0; i <= 50; i+=10 ) {
    			r.$dropdownSec.append("<option value=" + i + ">" + i + " mins</option>")
			}
			
			// get intial 2.4km run points
			l.getRunPoint(function(){
				if (onComplete) { onComplete() };
			});

			// dropdown min list on change 
			r.$dropdownMin.on('change', function() {
  				l.getRunPoint(function(){
  					// calculate new points
  					l.calTotalPts();
  				});
			});

			// dropdown sec list on change
			r.$dropdownSec.on('change', function() {
  				l.getRunPoint(function(){
  					// calculate new points
  					l.calTotalPts();
  				});
			});
			//
		}
	},
	getAgegroup: function(onComplete){
		//
		var l = lPage;
		
		// ajax call
		$.ajax({
			type: "GET",
			url: "scp/getagecat.php",
			data: { age : l.age.$dropdown.find(":selected").val()},
			dataType: "html",
			success: function(output){
				// set age group label
				l.$lblAgeGrp.html("Age Group " + output);
				// set global var ageGroup
				l.$ageGroup = output;
			},
			complete: function (jqXHR, textStatus) {
				if (onComplete) { onComplete() }
			}
		});
	},
	getSitupPoint: function(onComplete){
		//
		var l = lPage;

		// ajax call
		$.ajax({
			type: "GET",
			url: "scp/getSitupPoint.php",
			data: { agegrp : l.$ageGroup, rep: l.situp.$dropdown.find(":selected").val() },
			dataType: "html",
			success: function(output){
				// set situp label
				l.$lblSitupPt.html(output);
				// set global var situp points
				l.$ptsSU = output;
			},
			complete: function (jqXHR, textStatus) {
				if (onComplete) { onComplete() }
			}
		});
	},
	getPushupPoint: function(onComplete){
		//
		var l = lPage;

		// ajax call
		$.ajax({
			type: "GET",
			url: "scp/getPushupPoint.php",
			data: { agegrp : l.$ageGroup, rep: l.pushup.$dropdown.find(":selected").val() },
			dataType: "html",
			success: function(output){
				// set push label
				l.$lblPushupPt.html(output);
				// set global var pushup points
				l.$ptsPU = output;
			},
			complete: function (jqXHR, textStatus) {
				if (onComplete) { onComplete() }
			}
		});
	},
	getRunPoint: function(onComplete){
		//
		var l = lPage;
		
		// get time in seconds
		var Caltiming = l.calTiming();

		// ajax call
		$.ajax({
			type: "GET",
			url: "scp/getRunPoint.php",
			data: { agegrp : l.$ageGroup, timing: Caltiming },
			dataType: "html",
			success: function(output){
				// set 2.4km run label
				l.$lblRunPt.html(output);
				// set global var 2.4 km run points
				l.$ptsRun = output;
			},
			complete: function (jqXHR, textStatus) {
				if (onComplete) { onComplete() }
			}
		}); 
	},
	calTotalPts: function(){
		//
		var l = lPage;
		
		// calculate totoal points
		var totalPt = parseFloat(l.$ptsSU) + parseFloat(l.$ptsPU) + parseFloat(l.$ptsRun);

		// set total point label
		l.$lblTtlPt.html(totalPt);
	},
	calTiming: function(){
		//
		var r = lPage.run;
		//
		var mins = parseFloat(r.$dropdownMin.find(":selected").val());
		var sec = parseFloat(r.$dropdownSec.find(":selected").val());
		//
		var timing = ((mins*60) + sec);
		//
		return timing;
	}
};

//---------------------------------------------
//---- document ready -------------------------

$(document).ready(function () {

	//init Local Page
	lPage.init();
});