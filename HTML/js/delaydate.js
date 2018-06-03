function unpack(rows, key) {
  return rows.map(function (row) {
    return row[key];
  });
}

Plotly.d3.csv("/../data/datedelay.csv", function (err, rows) {

  var varcontainer = {
    type: 'lines',
    x: unpack(rows, 'day'),
    y: unpack(rows, 'value'),
    line: {
      color: '#17BECF'
    },
    name: 'Delays in 2008',
  };

  var df = [varcontainer];

  name = document.getElementById("select").value;

  var specs = {
    title: 'Average Delay of Airlines Per ' + name,
    showlegend: true,
    legend: {
      "orientation": "v"
    },
    xaxis: {
      title: 'Days',
      range: ['2008-01-1', '2008-12-31'],
      rangeselector: {
        buttons: [{
          count: 1,
          label: '1 Month',
          step: 'month',
          stepmode: 'backward'
        }, {
          count: 4,
          label: '4 Months',
          step: 'month',
          stepmode: 'backward'
        }, {
          count: 6,
          label: '6 Months',
          step: 'month',
          stepmode: 'backward'
        }, {
          step: 'all'
        }]
      },
      rangeslider: {
        range: ['2008-01-1', '2008-12-31']
      },
      type: 'date'
    },
    yaxis: {
      title: 'Average Delay in mins',
    }
  };

  Plotly.newPlot('tester', df, specs);
  movename();
});

function movename() {
  var title = document.getElementsByClassName("g-xtitle");

  title[0].innerHTML = "<text class=\"xtitle\" x=\"497.5\" y=\"500.5\" text-anchor=\"middle\" data-unformatted=\"Days\" data-math=\"N\" style=\"font-family: &quot;Open Sans&quot;, verdana, arial, sans-serif; font-size: 14px; fill: rgb(68, 68, 68); opacity: 1; font-weight: normal; white-space: pre;\">Days</text>";
  title[0].outerHTML = "<g class=\"g-xtitle\"><text class=\"xtitle\" x=\"500.5\" y=\"406.5\" text-anchor=\"middle\" data-unformatted=\"Days\" data-math=\"N\" style=\"font-family: &quot;Open Sans&quot;, verdana, arial, sans-serif; font-size: 14px; fill: rgb(68, 68, 68); opacity: 1; font-weight: normal; white-space: pre;\">Days</text></g>";
}

function pickairline(day, num) {
  if (num == 1) {
    day = day + "avg";
  }

  Plotly.d3.csv("/../data/" + day + ".csv", function (err, rows) {

  var varcontainer = {
    type: 'lines',
    x: unpack(rows, 'day'),
    y: unpack(rows, 'value'),
    line: {
      color: '#17BECF'
    },
    name: 'Delays in 2008',
  };

  var df = [varcontainer];

  name = document.getElementById("select").value;

  if (name == "Date") {
    var specs = {
      title: 'Average Delay of Airlines Per ' + name,
      showlegend: true,
      legend: {
        "orientation": "v"
      },
      xaxis: {
        title: 'Days',
        range: ['2008-01-1', '2008-12-31'],
        rangeselector: {
          buttons: [{
            count: 1,
            label: '1 Month',
            step: 'month',
            stepmode: 'backward'
          }, {
            count: 4,
            label: '4 Months',
            step: 'month',
            stepmode: 'backward'
          }, {
            count: 6,
            label: '6 Months',
            step: 'month',
            stepmode: 'backward'
          }, {
            step: 'all'
          }]
        },
        rangeslider: {
          range: ['2008-01-1', '2008-12-31']
        },
        type: 'date'
      },

      yaxis: {
        title: 'Average Delay in mins',
      }
    };
  } else {
    var specs = {
      title: 'Average Delay of Airlines Per ' + name,
      showlegend: true,
      legend: {
        "orientation": "v"
      },
      xaxis: {
        title: 'Days'
      },
      yaxis: {
        title: 'Average Delay in mins',
      }
    };
  }

  Plotly.newPlot('tester', df, specs);
  movename();

});
}

function thefunction() {

  var selected = document.getElementById("select").value;

  if (selected == "Day") {
    pickairline("daydelay", 0);

  } else if (selected == "Date") {
    pickairline("datedelay", 0);
  }

}

function tallyfunction() {

  var selected = document.getElementById("select").value;
  if (selected == "Day") {
    pickairline("daydelay", 2);

  } else if (selected == "Date") {
    pickairline("datedelay", 2);
  }
}

function avgfunction() {

  var selected = document.getElementById("select").value;

  if (selected == "Day") {
    pickairline("daydelay", 1);

  } else if (selected == "Date") {
    pickairline("datedelay", 1);
  }
}