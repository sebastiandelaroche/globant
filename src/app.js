const express = require('express');

const app = express();

app.get('/', (req, res) => {
  console.log('process ', process.pid);
  res.send('Hey there!');
});

const port = +(process.env.PORT || 3000);

app.listen(port, () => console.log(`server running for ${port} port....`));
