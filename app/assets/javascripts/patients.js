const form = document.querySelector('form')

form.addEventListener('submit', (event) => {
    // when the form is submitted, the event is prevented, and the selected option is found
    // each option has a dataset that includes whether or not the state is supported
    // if the state is supported, the form is submitted as normal
    // otherwise, an alert tells the user that their state is not accepted
    event.preventDefault()
    const stateDropdown = document.getElementById('patient_state_id')
    const selectedState = stateDropdown.options[stateDropdown.selectedIndex]
    if (selectedState.dataset.available == 'true') {
        form.submit()
    } else {
        alert(`${selectedState.innerText} is not currently available`)
    }
})