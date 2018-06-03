Plotly.d3.csv("/../data/airtran-delay.csv", function(err, rows){

  var varcontainer={
    type:'lines',
    x:unpack(rows,'month'),
    y:unpack(rows,'avgflight'),
    line:{color:'#17BECF'},
    name:'Average Delay Per Month in 2008',
  };

  var df=[varcontainer];

  name=document.getElementById("select").value;

  var specs={
  title:'Average Delay in Airlines Per Month for '+name,
    showlegend:true,
      legend:{"orientation": "h"},
    xaxis:{
      title:'Months',
      range: [1, 12],
    },
    yaxis:{
      range: [40, 90],
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

Plotly.d3.csv("/../data/alaska-delay.csv", function(err, rows){

  var varcontainer={
    type:'lines',
    x:unpack(rows,'month'),
    y:unpack(rows,'avgflight'),
    line:{color:'#17BECF'},
    name:'Average Delay Per Month in 2008',
  };

  var df=[varcontainer];
  name=document.getElementById("select2").value;

  var specs={
    title:'Average Delay in Airlines Per Month for '+name,
    showlegend: true,
    legend:{"orientation":"h"},
    xaxis:{
      title:'Months',
      range: [1, 12],
    },
    yaxis:{
      range: [40, 90],
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

function pickairline(airline, num){
  Plotly.d3.csv("/../data/"+airline+".csv", function(err, rows){

    var varcontainer={
      type:'lines',
      x:unpack(rows,'month'),
      y:unpack(rows,'avgflight'),
      line:{color:'#17BECF'},
      name:'Average Delay Per Month in 2008',
    };

    var df=[varcontainer];

    if (num==1){
      name=document.getElementById("select").value;
      var specs={
        title:'Average Delay in Airlines Per Month for '+name,
        showlegend: true,
        legend:{"orientation": "h"},
        xaxis:{
          title:'Months',
          range: [1, 12],
        },
        yaxis:{
          range: [40, 90],
          title:'Average Delay in mins',
        }
      };

      Plotly.newPlot('tester',df,specs);
      movename();

    }else{

      name=document.getElementById("select2").value;

      var specs={
        title:'Average Delay in Airlines Per Month for '+name,
        showlegend: true,
        legend:{"orientation":"h"},
        xaxis:{
          title:'Months',
          range: [1, 12],
        },
        yaxis:{
          range: [40, 90],
          title:'Average Delay in mins',
        }
      };

      Plotly.newPlot('tester2',df,specs);
      movename();

    }
  });
}

function changeGraph1(){

  var selected = document.getElementById("select").value;

  if (selected=="Air Tran"){
    pickairline("airtran-delay",1);

  }else if (selected=="Alaska Airways"){
    pickairline("alaska-delay",1);

  }else if (selected=="Aloha Airlines"){
    pickairline("aloha-delay",1);

  }else if (selected=="American Eagle"){
    pickairline("americane-delay",1);

  }else if (selected=="American Airlines"){
    pickairline("americanair-delay",1);

  }else if (selected=="Atlantic Southeast"){
    pickairline("atlanticse-delay",1);

  }else if (selected=="Continental Airlines"){
    pickairline("continental-delay",1);

  }else if (selected=="Delta Airlines"){
    pickairline("delta-delay",1);

  }else if (selected=="Endevour Airlines"){
    pickairline("endevour-delay",1);

  }else if (selected=="Express-Jet Airlines"){
    pickairline("express-delay",1);

  }else if (selected=="Frontier Airlines"){
    pickairline("frontier-delay",1);

  }else if (selected=="Hawaiian Airlines"){
    pickairline("hawaiian-delay",1);

  }else if (selected=="JetBlue Airlines"){
    pickairline("jetblue-delay",1);

  }else if (selected=="Mesa Airlines"){
    pickairline("mesa-delay",1);

  }else if (selected=="Northwest Airlines"){
    pickairline("nw-delay",1);

  }else if (selected=="Skywest Airlines"){
    pickairline("skywest-delay",1);

  }else if (selected=="Southwest Airlines",1){
    pickairline("sw-delay",1);

  }else if (selected=="Southwest Airlines",1){
    pickairline("united-delay",1);
  }
}

function changeGraph2(){

  var selected = document.getElementById("select2").value;

  if (selected=="Air Tran"){
    pickairline("airtran-delay",2);

  }else if (selected=="Alaska Airways"){
    pickairline("alaska-delay",2);

  }else if (selected=="Aloha Airlines"){
    pickairline("aloha-delay",2);

  }else if (selected=="American Eagle"){
    pickairline("americane-delay",2);

  }else if (selected=="American Airlines"){
    pickairline("americanair-delay",2);

  }else if (selected=="Atlantic Southeast"){
    pickairline("atlanticse-delay",2);

  }else if (selected=="Continental Airlines"){
    pickairline("continental-delay",2);

  }else if (selected=="Delta Airlines"){
    pickairline("delta-delay",2);

  }else if (selected=="Endevour Airlines"){
    pickairline("endevour-delay",2);

  }else if (selected=="Express-Jet Airlines"){
    pickairline("express-delay",2);

  }else if (selected=="Frontier Airlines"){
    pickairline("frontier-delay",2);

  }else if (selected=="Hawaiian Airlines"){
    pickairline("hawaiian-delay",2);

  }else if (selected=="JetBlue Airlines"){
    pickairline("jetblue-delay",2);

  }else if (selected=="Mesa Airlines"){
    pickairline("mesa-delay",2);

  }else if (selected=="Northwest Airlines"){
    pickairline("nw-delay",2);

  }else if (selected=="Skywest Airlines"){
    pickairline("skywest-delay",2);

  }else if (selected=="Southwest Airlines",2){
    pickairline("sw-delay",2);

  }else if (selected=="Southwest Airlines",2){
    pickairline("united-delay",2);
  }
}