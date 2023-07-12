//index.js

let express = require("express");
let app = express();
app.use(express.static("APCWebGL/public")); //public이라는 폴더 사용을 선언함

app.listen(3005, function () {
  console.log("App is running on port 3005");
});

/*app.get("/", function (req, res) {
  res.sendfile("public/index.html"); //public 폴더 안의 index.html을 사용
});*/
app.get('*', (req, res) => {
  res.sendFile('index.html', {root: 'public'});
});
