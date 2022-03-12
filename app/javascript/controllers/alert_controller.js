import Swal from 'sweetalert2'
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    connect() {
        this.redirect = false
    }

    delete(event) {
        if (this.redirect) return;
        event.stopImmediatePropagation()
        event.preventDefault()
        Swal.fire({
            icon: 'warning',
            text: "You won't be able to revert this!",

            title: 'Tem Certeza?',
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            showCancelButton: true,
            confirmButtonText: 'Sim',
            cancelButtonText: 'Cancelar',
        }).then((result) => {
            /* Read more about isConfirmed, isDenied below */
            if (result.isConfirmed) {
                this.redirect = true
                this.element.click()
                    //  Swal.fire('Saved!', '', 'success')
            }
        })

    }
}