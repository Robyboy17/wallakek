import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = ["items"]

    open() {
        this.itemsTarget.classList.remove('translate-x-full')
        this.itemsTarget.classList.add('translate-x-0')
    }

    close() {
        this.itemsTarget.classList.remove('translate-x-0')
        this.itemsTarget.classList.add('translate-x-full')
    }
}
