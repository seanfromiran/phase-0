// U3.W9:JQuery


// I worked on this challenge with Nick Davies
// This challenge took me 1 hours.

$(document).ready(function(){

//RELEASE 0:
//link the image

//RELEASE 1:

//Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'});

//RELEASE 2:
//Add code here to select elements of the DOM
bodyElement = $('body');
mascotClass = $('.mascot');
header = $('h1');
//RELEASE 3:
  // Add code here to modify the css and html of DOM elements

$('body > h1').css("color", "red");
$('body > h1').css("border", "1px solid green");
$('body > h1').css("visibility", "hidden");

$('div > h1').html("Chorus Frogs");

//RELEASE 4: Event Listener
  // Add the code for the event listener here
$('img').css("border", "1px solid green");
$('img').on('mouseenter', function(e){
	e.preventDefault()
	$(this).attr('src', 'http://www.californiaherps.com/noncal/misc/miscfrogs/images/pstreckeriwc7073.jpg')
	$(this).animate({
		height: "50%",
		width: "50%",
		borderWidth: "20px",
	}, {
		duration: 5000
	});
});

$('img').on('mouseleave', function(e){
	e.preventDefault()
	$(this).attr('src', 'dbc_logo.png')
});

//RELEASE 5: Experiment on your own

$('img').animate()

})  /* end of the document.ready function: do not remove or write DOM manipulation below this.*/


/*  What is jQuery?

		jQuery is a JavaScript library which allows us to interact with HTML DOM 
		elements in a simple way. By using this library, we give our webpages more 
		dynamic possibilities and functionality.

    What does jQuery do for you?

    jQuery identifies HTML tags and modifies them as specified in a seperate 
    JavaScript file. Technically, we do not even need to code up HTML, as 
    jQuery has the capability to dynamically generate HTML code.

    What did you learn about the DOM while working on this challenge?

    This challenge was a good refresher for the heirarchy of the DOM. We used 
    parent specific CSS to modify HTML, and so we had to pay close attention to
    what was an ancestor of what in our HTML file.

*/