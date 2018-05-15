/* global LeafletWidget, L */
LeafletWidget.methods.addEasyPrint = function(options) {
  var map = this;
  L.easyPrint(options).addTo(map);
};

// LeafletWidget.methods.addEasyPrint = function(map, title, position, exportOnly) {
//   // (
//   //   function() {
//       L.easyPrint({
//         title: title,
//         // exportOnly: exportOnly,
//         position: position,
//         sizeModes: ['A4Portrait', 'A4Landscape']
//       }).addTo(map);
//     // }
//     // ).call(this);
// };
