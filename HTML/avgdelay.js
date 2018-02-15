function unpack(rows, key){
	return rows.map(function(row){
		return row[key];
	});
}
Plotly.d3.csv("delayaverage.csv", function(err, rows){

var varcontainer={
  type:'bar',
  x:unpack(rows,'airline'),
  y:unpack(rows,'avgdelay'),
  name:'Average Delay in mins',
}

var df=[varcontainer];
    
var specs={
title:'Average Delay Per Airline',
	showlegend:true,
	xaxis:{
		title:'American Airlines',
	},
	yaxis:{
    	title:'Average Delay in mins',
  	}
};

Plotly.newPlot('tester',df,specs);
});