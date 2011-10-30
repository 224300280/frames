//Rotate the photos for banner
			
var step= 1; //variable that will increment through the images

function slideit(){
	document.images.slide.src = eval("image"+step+".src");
	if (step<5) {
		step++;
	} else {
		step = 1;
	}
	setTimeout("slideit()",4000); //call function "slideit()" every 4.0 seconds
}

slideit();
