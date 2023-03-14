import {Controller} from "@hotwired/stimulus"

// Connects to data-controller="dialog-input"
export default class extends Controller {
  static targets = ["input"]
  static values = {dialog: String}

  get dialogElement() {
    return document.querySelector(this.dialogValue)
  }

  connect() {
    this.dialogElement.addEventListener("close", this.setInputValue.bind(this))
  }

  showDialog() {
    this.dialogElement.showModal()
  }

  setInputValue(event) {
    const {target: {returnValue}} = event
    this.inputTarget.value = returnValue
  }
}
