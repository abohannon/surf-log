document.addEventListener(
  "DOMContentLoaded",
  () => {
    console.log("DOM Content Loaded");
    // mobile nav functionality
    const mobileMenuButton = document.querySelector("#mobile-menu-button");
    const menuBody = document.querySelector("#menu-body");

    mobileMenuButton.addEventListener("click", () => {
      console.log("click");
      if (menuBody.classList.contains("hidden")) {
        menuBody.classList.remove("hidden");
      } else {
        menuBody.classList.add("hidden");
      }
    });
  },
  false
);
