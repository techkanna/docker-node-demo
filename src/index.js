const app = require("express")();

app.get("/", (req, res) => {
  res.json({ message: "Hello World" });
})

const port = process.env.PORT || 3000;

app.listen(port, () => {
  console.log(`App listening on port http://localhost:${port}`);
});