import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = {
    content: String
  }

  connect() {
    this.originalText = this.element.textContent;
  }

  async copy() {
      try {
        await navigator.clipboard.writeText(this.contentValue);
        this.element.textContent = "Copied!"

        setTimeout(() => {
          this.element.textContent = this.originalText;
        }, 2000)

      } catch (error) {
        alert('Failed on copying to clipboard.');
        console.error(error.message);
      }
  }
}
