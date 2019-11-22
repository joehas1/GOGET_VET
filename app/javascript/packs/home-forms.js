const triggerVetButton = document.getElementById("trigger-vet")
const appointmentModal = document.getElementById("appointment-modal")
const triggerLanguageNext = document.getElementById("language-next")
const triggerTypeNext = document.getElementById("type-next")
const languageForm = document.getElementById("language-form")
const typeForm = document.getElementById("type-form")
const timeForm = document.getElementById("time-form")

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
