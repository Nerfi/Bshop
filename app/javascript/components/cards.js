const displayContent = () => {
  const parraf = document.getElementById('parraf');
  parraf.addEventListener("click", (event) => {
  event.preventDefault();
  //parraf.classList.add("demo");
  parraf.insertAdjacentHTML("beforeend", "<h2>Search over all the Bshops created by others users</h2>")



  })
}


const findContent = () => {
  const parr = document.getElementById('find');
  parr.addEventListener("click", (event) => {
  event.preventDefault();
  //parraf.classList.add("demo");
  parr.insertAdjacentHTML("beforeend", "<h2>Find the right one for you among our Bshops</h2>")



  })
}


const bookContent = () => {
  const parraf = document.getElementById('book');
  parraf.addEventListener("click", (event) => {
  event.preventDefault();
  //parraf.classList.add("demo");
  parraf.insertAdjacentHTML("beforeend", "<h2>Book your next Haircut!</h2>")



  })
}



const shineContent = () => {
  const parra = document.getElementById('shine');
  parra.addEventListener("click", (event) => {
  event.preventDefault();
  //parraf.classList.add("demo");
  parra.insertAdjacentHTML("beforeend", "<h2>Time to shine</h2>")



  })
}


export { shineContent };

export { bookContent };




export { findContent };





export { displayContent };

