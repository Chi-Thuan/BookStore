<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

  <footer class="main-footer">
        <div class="footer-left">
          <a href="./home">BookStore</a>
        </div>
        <div class="footer-right"></div>
      </footer>
    </div>
  </div>

  <script src="./admin_assets/modules/jquery.min.js"></script>
  <script src="./admin_assets/modules/popper.js"></script>
  <script src="./admin_assets/modules/tooltip.js"></script>
  <script src="./admin_assets/modules/bootstrap/js/bootstrap.min.js"></script>
  <script src="./admin_assets/modules/nicescroll/jquery.nicescroll.min.js"></script>
  <script src="./admin_assets/modules/scroll-up-bar/dist/scroll-up-bar.min.js"></script>
  <script src="./admin_assets/js/sa-functions.js"></script>
  
  <script src="./admin_assets/modules/chart.min.js"></script>
  <script src="./admin_assets/modules/summernote/summernote-lite.js"></script>

  <script>
  var ctx = document.getElementById("myChart").getContext('2d');
  var myChart = new Chart(ctx, {
    type: 'line',
    data: {
      labels: ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"],
      datasets: [{
        label: 'Statistics',
        data: [460, 458, 330, 502, 430, 610, 488],
        borderWidth: 2,
        backgroundColor: 'rgb(87,75,144)',
        borderColor: 'rgb(87,75,144)',
        borderWidth: 2.5,
        pointBackgroundColor: '#ffffff',
        pointRadius: 4
      }]
    },
    options: {
      legend: {
        display: false
      },
      scales: {
        yAxes: [{
          ticks: {
            beginAtZero: true,
            stepSize: 150
          }
        }],
        xAxes: [{
          gridLines: {
            display: false
          }
        }]
      },
    }
  });
  </script>
  <script src="./admin_assets/js/scripts.js"></script>
  <script src="./admin_assets/js/custom.js"></script>
  <script src="./admin_assets/js/demo.js"></script>
</body>
</html>