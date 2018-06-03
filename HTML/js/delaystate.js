function unpack(rows, key) {
    return rows.map(function(row){
     return row[key];
   });
}

Plotly.d3.csv('/../data/statedelay.csv', function(err, rows){

    var df=[{
        type:'choropleth',
        locationmode:'USA-states',
        locations:unpack(rows,'region'),
        z:unpack(rows,'value'),
        text:unpack(rows,'region'),
        colorscale: [
            [0, 'rgb(232,233,236)'], [0.2, 'rgb(211,219,242)'],
            [0.4, 'rgb(163,185,243)'], [0.6, 'rgb(109,145,243)'],
            [0.8, 'rgb(59,109,246)'], [1, 'rgb(11,74,249)']
          ],
        colorbar:{
          autotic:false,
          title:'Average Delay in mins',
        }
    }];

    var specs={
      title:'Average Delay for Airlines Per State (mins)',
      geo:{
        scope:'usa',
        showlakes:true,
        lakecolor:'rgb(255,255,255)'
        },
    };

    Plotly.plot('tester',df,specs);

});