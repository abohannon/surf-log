document.addEventListener("turbolinks:load", () => {
  const mobileMenuButton = document.querySelector("#mobile-menu-button");
  const menuBody = document.querySelector("#menu-body");

  mobileMenuButton.addEventListener("click", () => {
    menuBody.classList.toggle("hidden");
  });
});
