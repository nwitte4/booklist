// (function(book, author) {
//   book();
//   author();
// })(window.book, window.author);

//

(function(globals) {
  globals.book();
  globals.author();
})({ book, author });
