import 'select2';
import 'select2/dist/css/select2';
import { Controller } from "stimulus";

export default class extends Controller {

    connect() {
        $(document).on('select2:open', () => {
            document.querySelector('.select2-search__field').focus();
        });
        this.select('#municipio')
        this.select('#situacao')
        this.select('#ais')
        this.select('#conselho')
        this.select('#mes')

        $('.form-control.select').select2({
            language: "pt-BR",

        });
    }

    select(event) {
        $(event).select2({
            language: "pt-BR",
            dropdownParent: $('#modal-show')
        });
    }
}