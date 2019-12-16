document.addEventListener("turbolinks:load", () => {
  mobileMenuToggle();
});

function mobileMenuToggle() {
  const mobileMenuButton = document.querySelector("#mobile-menu-button");
  const menuBody = document.querySelector("#menu-body");

  mobileMenuButton.addEventListener("click", () => {
    menuBody.classList.toggle("hidden");
  });
}
