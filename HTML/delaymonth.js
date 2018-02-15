Plotly.d3.csv("airtran-delay.csv", function(err, rows){

  var varcontainer={
    type:'lines',
    x:unpack(rows,'month'),
    y:unpack(rows,'avgflight'),
    line:{color:'#17BECF'},
    name:'Average Delay Per Month in 2008',
  }

  var df=[varcontainer];

  hi=document.getElementById("select").value;

  var specs={
  title:'Average Delay in Airlines Per Month for '+hi,
    showlegend:true,
      legend:{"orientation": "h"},
    xaxis:{
      title:'Months',
    },
    yaxis:{
        title:'Average Delay in mins',
      }
  };

  Plotly.newPlot('tester',df,specs);
});

function unpack(rows, key){
  return rows.map(function(row){
    return row[key];
  });
}

Plotly.d3.csv("alaska-delay.csv", function(err, rows){

  var varcontainer={
    type:'lines',
    x:unpack(rows,'month'),
    y:unpack(rows,'avgflight'),
    line:{color:'#17BECF'},
    name:'Average Delay Per Month in 2008',
  }

  var df=[varcontainer];
  hi=document.getElementById("select2").value;

  var specs={
    title:'Average Delay in Airlines Per Month for '+hi,
    showlegend: true,
    legend:{"orientation":"h"},
    xaxis:{
      title:'Months',
    },
    yaxis:{
        title: 'Average Delay in mins',
    }
  };

  Plotly.newPlot('tester2',df,specs);
  movename();
});

function movename(){

  var title=document.getElementsByClassName("g-xtitle");

  title[0].innerHTML="<text class=\"xtitle\" x=\"240\" y=\"400\" text-anchor=\"middle\" data-unformatted=\"Months\" data-math=\"N\" style=\"font-family: &quot;Open Sans&quot;, verdana, arial, sans-serif; font-size: 14px; fill: rgb(68, 68, 68); opacity: 1; font-weight: normal; white-space: pre;\">Months</text>";
  title[0].outerHTML="<g class=\"g-xtitle\"><text class=\"xtitle\" x=\"240\" y=\"400\" text-anchor=\"middle\" data-unformatted=\"Months\" data-math=\"N\" style=\"font-family: &quot;Open Sans&quot;, verdana, arial, sans-serif; font-size: 14px; fill: rgb(68, 68, 68); opacity: 1; font-weight: normal; white-space: pre;\">Months</text></g>";
  title[1].innerHTML="<text class=\"xtitle\" x=\"240\" y=\"400\" text-anchor=\"middle\" data-unformatted=\"Months\" data-math=\"N\" style=\"font-family: &quot;Open Sans&quot;, verdana, arial, sans-serif; font-size: 14px; fill: rgb(68, 68, 68); opacity: 1; font-weight: normal; white-space: pre;\">Months</text>";
  title[1].outerHTML="<g class=\"g-xtitle\"><text class=\"xtitle\" x=\"240\" y=\"400\" text-anchor=\"middle\" data-unformatted=\"Months\" data-math=\"N\" style=\"font-family: &quot;Open Sans&quot;, verdana, arial, sans-serif; font-size: 14px; fill: rgb(68, 68, 68); opacity: 1; font-weight: normal; white-space: pre;\">Months</text></g>";
}