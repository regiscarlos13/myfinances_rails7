import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="budget"
export default class extends Controller {
    static targets = ["value", "check",
        "january", "february", "march",
        "april", "may", "june",
        "july", "august", "september",
        "october", "november", "december"

    ]


    connect() {

    }
    value() {
        this.value_inputs(this.valueTarget.value)
    }

    update_value() {
        if (this.checkTarget.checked == true) {
            this.valueTarget.disabled = false
            this.value_inputs('')
            this.valueTarget.focus()
        } else {
            this.valueTarget.value = ''
            this.disabled_inputs(false)
            this.januaryTarget.focus()

        }
    }

    value_inputs(event) {
        this.januaryTarget.value = event
        this.februaryTarget.value = event
        this.marchTarget.value = event
        this.aprilTarget.value = event
        this.mayTarget.value = event
        this.juneTarget.value = event
        this.julyTarget.value = event
        this.augustTarget.value = event
        this.septemberTarget.value = event
        this.octoberTarget.value = event
        this.novemberTarget.value = event
        this.decemberTarget.value = event
    }
}