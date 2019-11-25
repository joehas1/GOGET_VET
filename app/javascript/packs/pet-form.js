const triggerPet = document.getElementById("trigger-pet")
const petIndex = document.getElementById("pet-index")
const appointmentNew = document.getElementById("appointment-new")


triggerPet.addEventListener("click", event => {
  appointmentNew.style.display = "none"
  petIndex.style.display = "block"
})
