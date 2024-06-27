/*
Request 1: Click to Change Text.
When the user clicks on the "Welcome Message" block, change the text to "Have a Good
Time!".
*/
const welcomeMsg = document.getElementById('welcome-msg');
welcomeMsg.addEventListener('click', () => {
    welcomeMsg.innerHTML = "Have a Good Time!";
});

/* 
Request 2: Click to Show More Content Boxes.
There are some more content boxes waiting to show. When the user clicks the Call-to-Action
button, show those hidden content boxes.

Hint: all content boxes are already there, they are just set to display: none at the beginning.
*/
const hiddenContent = document.querySelector('.hidden-content-container');
const botton = document.getElementById('botton');
botton.addEventListener('click', () => {
    // this allows the display state can be reset
    if (hiddenContent.style.display === '') {
        hiddenContent.style.display = 'block';
        botton.textContent = 'Hide Detail';
    } else {
        hiddenContent.style.display = ''
        botton.textContent = 'Show Detail';
    }
    ;
});
