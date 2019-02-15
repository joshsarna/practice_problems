/*

Use the `reduce` method to convert the array of objects

var fruits = [
  {name: "apple", color: "red"},
  {name: "banana", color: "yellow"},
  {name: "grape", color: "purple"}
];

into a single object where the keys are the names and the values are the colors. The result should look like:

{apple: "red", banana: "yellow", grape: "purple"}

*/

// var fruits = [
//   {name: "apple", color: "red"},
//   {name: "banana", color: "yellow"},
//   {name: "grape", color: "purple"}
// ];

// var colors = fruits.reduce( (colors,fruit) => {
//   colors[fruit["name"]] = fruit["color"];
//   console.log(colors);
// });
// console.log(colors);

// // .reduce reduces an array to a single value
// // I have an array of objects and want a single object.

fruits = [
  {"name" => "apple", "color" => "red"},
  {"name" => "banana", "color" => "yellow"},
  {"name" => "grape", "color" => "purple"}
]
 p fruits.map { |fruit| [fruit["name"], fruit["color"]] }.to_h