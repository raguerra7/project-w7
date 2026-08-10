(() => {
  const enhance = () => {
    document.querySelectorAll(".mermaid:not([data-w7-zoom])").forEach((diagram) => {
      diagram.dataset.w7Zoom = "true";
      diagram.tabIndex = 0;
      diagram.setAttribute("role", "button");

      const open = () => {
        const svg = diagram.querySelector("svg");
        if (!svg) return;

        const dialog = document.createElement("dialog");
        dialog.className = "w7-diagram-dialog";
        dialog.innerHTML = `
          <div class="w7-diagram-dialog__bar">
            <button class="w7-diagram-dialog__close" type="button">${document.documentElement.lang === "pt" ? "Fechar" : "Close"}</button>
          </div>
          <div class="w7-diagram-dialog__canvas"></div>`;
        dialog.querySelector(".w7-diagram-dialog__canvas").append(svg.cloneNode(true));
        dialog.querySelector(".w7-diagram-dialog__close").addEventListener("click", () => dialog.close());
        dialog.addEventListener("click", (event) => {
          if (event.target === dialog) dialog.close();
        });
        dialog.addEventListener("close", () => dialog.remove());
        document.body.append(dialog);
        dialog.showModal();
      };

      diagram.addEventListener("click", open);
      diagram.addEventListener("keydown", (event) => {
        if (event.key === "Enter" || event.key === " ") {
          event.preventDefault();
          open();
        }
      });
    });
  };

  document.addEventListener("DOMContentLoaded", enhance);
  if (typeof document$ !== "undefined") document$.subscribe(enhance);
  window.setTimeout(enhance, 500);
  window.setTimeout(enhance, 1500);
})();
