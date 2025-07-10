const express = require('express');
const app = express();

app.get('/', (_, res) => res.send('👋 Hello from EKS + Node.js!'));

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => console.log(`App listening on ${PORT}`));

