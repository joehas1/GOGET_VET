const triggerVetButton = document.getElementById("trigger-vet")
const appointmentModal = document.getElementById("appointment-modal")
const triggerLanguageNext = document.getElementById("language-next")
const triggerTypeNext = document.getElementById("type-next")
const triggerTimeNext = document.getElementById("time-next")
const triggerGeolocationNext = document.getElementById("geolocation-next")

const languageForm = document.getElementById("language-form")
const typeForm = document.getElementById("type-form")
const timeForm = document.getElementById("time-form")
const geolocationForm = document.getElementById("geolocation-form")
const symptomForm = document.getElementById("symptom-form")

triggerVetButton.addEventListener("click", event => {
  appointmentModal.style.display = "block"
  languageForm.style.display = "block"
})

triggerLanguageNext.addEventListener("click", event => {
  languageForm.style.display = "none"
  typeForm.style.display = "block"
})

triggerTypeNext.addEventListener("click", event => {
  typeForm.style.display = "none"
  timeForm.style.display = "block"
})

triggerTimeNext.addEventListener("click", event => {
  timeForm.style.display = "none"
  geolocationForm.style.display = "block"
})

triggerGeolocationNext.addEventListener("click", event => {
  geolocationForm.style.display = "none"
  symptomForm.style.display = "block"
})

