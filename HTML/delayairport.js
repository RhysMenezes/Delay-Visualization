function unpack(rows, key){
    return rows.map(function(row){
        return row[key];
    });
}

Plotly.d3.csv('airportdelays.csv', function(err, rows){

    text1=unpack(rows,'airport');
    var op=[];
    text2=[];
    val=unpack(rows,'value');
    for (var i=0; i<val.length; i++) {
        text2[i]=text1[i]+": "+val[i];
        val[i]=val[i]/4;
        op[i]=val[i]/25;
    }

    var df=[{
        type:'scattergeo',
        locationmode:'USA-states',
        lat:unpack(rows,'latit'),
        lon:unpack(rows,'longit'),
        hoverinfo:'text',
        text:text2,
        marker:{
            size:val,
            opacity:op,
            line:{
                color:'black',
                width:2.5
            },
        },
    }];

    var specs={
        title: 'Average Delay Per Airport in 2008',
        geo:{
            scope:'usa',
            projection:{
                type: 'albers usa'
            },
            showland:true,
            landcolor:'rgb(217, 217, 217)',
            subunitcolor:'rgb(255,255,255)',
            countrycolor:'rgb(255,255,255)'
        },
    };

    Plotly.plot('tester',df,specs);

});
