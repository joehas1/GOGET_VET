import * as Swing from 'swing';



 const cards = [].slice.call(document.querySelectorAll('ul li'));

        // An instance of the Stack is used to attach event listeners.
        const config = {
            /**
             * Invoked in the event of dragmove.
             * Returns a value between 0 and 1 indicating the completeness of the throw out condition.
             * Ration of the absolute distance from the original card position and element width.
             *
             * @param {number} xOffset Distance from the dragStart.
             * @param {number} yOffset Distance from the dragStart.
             * @param {HTMLElement} element Element.
             * @returns {number}
             */
            allowedDirections: [Swing.Direction.LEFT, Swing.Direction.RIGHT, Swing.Direction.UP],
            throwOutConfidence: (xOffset, yOffset, element) => {
                const xConfidence = Math.min(Math.abs(xOffset) / element.offsetWidth, 1);
                const yConfidence = Math.min(Math.abs(yOffset) / element.offsetHeight, 1);
                var confidence = Math.max(xConfidence, yConfidence);
                //   var confidenceNew = confidence + 0.8;
                //   if (confidenceNew > 1) confidenceNew = 1;
                return confidence;
            }
        };
        const stack = Swing.Stack(config);

        cards.forEach(li => {
            // Add card element to the Stack.
            const card = stack.createCard(li);

            // Add event listener for when a card is thrown out of the stack.
            card.on('throwout', (event) => {
                event.target.remove()
            });
            card.on('throwoutright', (event) => {
                console.log('Card has been thrown RIGHT.');
                let vet = document.getElementById("vet")
                window.location.replace(`/appointments/new?vet_id=${vet}`);
            });
            card.on('throwoutleft', (event) => {
                console.log('Card has been thrown LEFT.');
                card.destroy();
            });
            card.on('throwoutup', (event) => {
                console.log('Card has been thrown UP.');
                window.location.replace('/appointments/new?vet_id=1');
            });
            card.on('dragmove', (event) => {
                console.log(event.throwDirection);
                let offsetX = Math.random() * 500, offsetY = Math.random() * 500;
                switch (event.throwDirection) {
                    case Swing.Direction.UP: offsetY = 500; break;
                    case Swing.Direction.LEFT: offsetX = -500; break;
                    case Swing.Direction.RIGHT: offsetX = 500; break;
                    default: break;
                }
                if (event.throwOutConfidence > 0.8) {
                    event.target.style.transition = '0.3s ease-out';
                    card.throwOut(offsetX, offsetY);
                }
            });
        });




