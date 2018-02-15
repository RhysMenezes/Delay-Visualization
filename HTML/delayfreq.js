function unpack(rows, key){
  return rows.map(function(row){
    return row[key];
  });
}

Plotly.d3.csv("datedelayavg.csv", function(err, rows){

  var varcontainer={
    type:'histogram',
    x:unpack(rows,'value'),
    line:{color:'#17BECF'},
    name:'Average Delay Frequence in mins',
  }

  var df=[varcontainer];

  var specs={
    title:'Average Delay Frequency in 2008',
    showlegend: true,
    legend:{"orientation": "h"},
    xaxis:{
      title:'Average Delay',
    },
    yaxis:{
      title:'Count',
    }
  };

  Plotly.newPlot('tester',df,specs);

});