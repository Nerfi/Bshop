const displayContent = () => {
  const parraf = document.getElementById('parraf');
  parraf.addEventListener("click", (event) => {
  event.preventDefault();
  //parraf.classList.add("demo");
  parraf.insertAdjacentHTML("beforeend", "<h2>Search over all the Bshops created by others users</h2>")



  })
}


const findContent = () => {
  const parraf = document.getElementById('find');
  parraf.addEventListener("click", (event) => {
  event.preventDefault();
  //parraf.classList.add("demo");
  parraf.insertAdjacentHTML("beforeend", "<h2>Search over all the Bshops created by others users</h2>")



  })
}


const bookContent = () => {
  const parraf = document.getElementById('book');
  parraf.addEventListener("click", (event) => {
  event.preventDefault();
  //parraf.classList.add("demo");
  parraf.insertAdjacentHTML("beforeend", "<h2>Search over all the Bshops created by others users</h2>")



  })
}



const shineContent = () => {
  const parraf = document.getElementById('shine');
  parraf.addEventListener("click", (event) => {
  event.preventDefault();
  //parraf.classList.add("demo");
  parraf.insertAdjacentHTML("beforeend", "<h2>Search over all the Bshops created by others users</h2>")



  })
}


export { shineContent };

export { bookContent };




export { findContent };





export { displayContent };

