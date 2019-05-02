const displayContent= () => {
  const parraf = document.getElementById('parraf');
  if (parraf){
    parraf.addEventListener("click", (event) =>{
      event.preventDefault();
      parraf.insertAdjacentHTML("beforeend", "<h2>Search over all the Bshops created by others users</h2>")
    })
  }
}








const findContent= () => {
  const parr = document.getElementById('find');
  if(parr){
    parr.addEventListener("click", (event) => {
      event.preventDefault();
      parr.insertAdjacentHTML("beforeend", "<h2>Find the right one for you among our Bshops</h2>")
    })
  }

}



const bookContent = () => {
  const book = document.getElementById('book');
  if (book) {
    book.addEventListener("click", (event) => {
      event.preventDefault();
      book.insertAdjacentHTML("beforeend", "<h2>Book your next Haircut!</h2>")
    })
  }
}








const shineContent = () => {
  const parra = document.getElementById('shine');
  if (parra) {
    parra.addEventListener("click", (event) => {
      event.preventDefault();
      parra.insertAdjacentHTML("beforeend", "<h2>Time to shine</h2>")
    })
  }
}

export { shineContent };
export { bookContent };
export { findContent };
export { displayContent };

