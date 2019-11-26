const triggerVetButton = document.getElementById("trigger-vet")
const appointmentModal = document.getElementById("appointment-modal")
const triggerLanguageNext = document.getElementById("language-next")
const triggerLanguagePrevious = document.getElementById("language-previous")
const triggerTypeNext = document.getElementById("type-next")
const triggerTimeNext = document.getElementById("time-next")
const triggerGeolocationNext = document.getElementById("geolocation-next")
const triggerTypePrevious = document.getElementById("type-previous")
const triggerTimePrevious = document.getElementById("time-previous")
const triggerGeolocationPrevious = document.getElementById("geolocation-previous")
const triggerSymptomPrevious = document.getElementById("symptom-previous")
const y = document.getElementById("time2");
const w = document.getElementById("time3");
const wLabel = document.getElementById("time3-label");
const yLabel = document.getElementById("time2-label");





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

// ---

triggerLanguagePrevious.addEventListener("click", event => {
  languageForm.style.display = "none"
  appointmentModal.style.display = "none"
})

triggerTypePrevious.addEventListener("click", event => {
  typeForm.style.display = "none"
  languageForm.style.display = "block"
})

triggerTimePrevious.addEventListener("click", event => {
  timeForm.style.display = "none"
  typeForm.style.display = "block"
})

triggerGeolocationPrevious.addEventListener("click", event => {
  geolocationForm.style.display = "none"
  timeForm.style.display = "block"
})
triggerSymptomPrevious.addEventListener("click", event => {
  geolocationForm.style.display = "block"
  symptomForm.style.display = "none"
})

document.addEventListener('DOMContentLoaded', function() {
    var date = document.querySelectorAll('.datepicker');
    if (date) {
      var instances = M.Datepicker.init(date, {
        autoClose: true,
        onSelect: (date) => {
          yLabel.style.color = 'transparent';
        }
      });

    }
    var time = document.querySelectorAll('.timepicker');
    if (time) {
      var instances = M.Timepicker.init(time, {
        autoClose: true,
        onSelect  : (hour, minute) => {
          wLabel.style.color = 'transparent';
        }
      });
    }
  });


