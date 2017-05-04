books = [{name: "Face to face 5th generation model",author: "Gaëlle",isbn: "5836136505"},{name: "Optimized contextuallybased hardware",author: "Danièle",isbn: "3874064492"},{name: "Sharable realtime support",author: "Tú",isbn: "7191019581"},{name: "Seamless multitasking intranet",author: "Maïwenn",isbn: "5525729393"},{name: "Optional clientdriven groupware",author: "Lorène",isbn: "0949600318"} ,{name: "Robust foreground array",author: "Maï",isbn: "6078830848"}]

books.each do |book|
  Book.create(book)
end
