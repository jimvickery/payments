require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("local-time").start()

window.Rails = Rails

import 'bootstrap'
import 'data-confirm-modal'

$(document).on("turbolinks:load", () => {
  $('[data-toggle="tooltip"]').tooltip()
  $('[data-toggle="popover"]').popover()
})

$(document).on("turoblinks:load", () => {
  let cardElement = document.querySelector("#card-element")
  if (cardElement != null) {setupStripe()}
})

function setupStripe() {
  const stripe_key = document.querySelector("meta[name='stripe-keyt']").getAttribute("content")
  const stripe = Stripe(stripe_key)

  const elements = stripe.elements()
  const card = elements.create('card')
  card.mount('#card-element')

  var displayError = document.getElementById('card-errors')

  card.addEventListener('change', (event) => {
    if (event.error) {
      displayError.textContent = event.error.message
    } else {
      displayError.textContent = ""
    }
  })
}

// document.addEventListener("turbolinks:load", () => {
//   const public_key = document.querySelector("meta[name='stripe-key']").getAttribute("content")
//   const stripe = Stripe(public_key)
//   const elements = stripe.elements()
//   const card = elements.create('card')
//   card.mount('#card_element')

//   card.addEventListener("change", (event) => {
//     var displayError = document.getElementById('card-errors')
//     if (event.error) {
//       displayError.textContent = event.error.message
//     }else {
//       displayError.textContent = ''
//     }
//   })

// })

// const form = document.querySelector("#payment-form")
// form.addEventListener("submit", (event) => {
//   event.preventDefault()

//   let data = {
//     payment_method: {
//       card: card, 
//       billing_details: {
//         name: form.querySelector("#name_on_card").value
//       }
//     }
//   }
//   stripe.confirmCardPayment(form.dataset.paymentIntentId, data).then((result) => {
//     if (result.error) {
//       var errorElement = document.getElementById('card-errors')
//       errorElement.textContent = result.error.messag
//     } else {
//       form.submit()
//     }
//   })
// })