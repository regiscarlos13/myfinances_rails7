import { Controller } from "@hotwired/stimulus"



export default class extends Controller {
    static targets = ["tipo"]

    connect() {
        console.log('deu certo')
            // $("#group_cont_tipo").select2()
    }
}