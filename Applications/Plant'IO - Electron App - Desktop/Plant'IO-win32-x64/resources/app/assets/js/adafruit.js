$(function() {
  $('.chart').easyPieChart({
        scale : false,
        barColor : '#80B64F',
        scaleColor : false,
        lineWidth : 6
  });
});
$(function() {
  $('.chart1').easyPieChart({
        scale : false,
        barColor : '#80B64F',
        scaleColor : false,
        lineWidth : 6
  });
});
$(function() {
  $('.chart2').easyPieChart({
        scale : false,
        barColor : '#80B64F',
        scaleColor : false,
        lineWidth : 6
  });
});

sendQuery('https://io.adafruit.com/api/v2/EloxFire/feeds?x-aio-key=5428a62c41fb4f489eaca493f5e09f6d');

sendQueryWithCallback(
        'https://io.adafruit.com/api/v2/EloxFire/feeds?x-aio-key=5428a62c41fb4f489eaca493f5e09f6d',
        'GET',
        () => {console.log("ok")}
    );
    function refreshData() {
    sendQueryWithCallback(
            'https://io.adafruit.com/api/v2/EloxFire/feeds?x-aio-key=5428a62c41fb4f489eaca493f5e09f6d',
            'GET',
            (response) => {
                response = JSON.parse(response);
                console.log("Refreshed");
                console.log(response)
                let SoilH = parseInt(response[3]['last_value'], 10);
                let AirH = parseInt(response[2]['last_value'], 10);
                let AirTemp = parseInt(response[1]['last_value'], 10);

                // console.log(SoilH);
                // console.log(AirH);
                // console.log(AirTemp);
                document.getElementById("chart").innerHTML = `${response[3]['last_value']}%`;
                document.getElementById("chart1").innerHTML = `${response[2]['last_value']}%`;
                document.getElementById("chart2").innerHTML = `${response[1]['last_value']}°C`;

                  $('.chart').data('easyPieChart').update(SoilH);
                  $('.chart1').data('easyPieChart').update(AirH);
                  $('.chart2').data('easyPieChart').update(AirTemp);



        });
        setTimeout(refreshData, 10000);

    };
    refreshData();
