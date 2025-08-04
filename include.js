// Dynamically load header and footer
document.addEventListener("DOMContentLoaded", () => {
  const load = (id, file) => {
    fetch(file)
      .then(res => res.text())
      .then(data => {
        document.getElementById(id).innerHTML = data;
        if (id === "header") {
          const hamburger = document.querySelector(".hamburger");
          const nav = document.querySelector("#main-menu");
          hamburger.addEventListener("click", () => {
            nav.classList.toggle("show");
          });
        }
      });
  };

  load("header", "header.html");
  load("footer", "footer.html");
});
