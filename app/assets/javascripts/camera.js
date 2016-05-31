 $(document).ready( function () {

		(function(){
			var video = document.getElementById('video'),
				canvas = document.getElementById('canvas'),
				context = canvas.getContext('2d'),
			vendorUrl = window.URL || window.webkitURL;

			navigator.GetMedia = 	navigator.GetUserMedia ||
									navigator.webkitGetUserMedia ||
									navigator.mozGetUserMedia ||
									navigator.msGetUserMedia;

			navigator.GetMedia({
				video: true,
				audio: false
				
			}, function(stream){
				video.src = vendorUrl.createObjectURL(stream);
				video.play();


			}, function(error){
				//algo
			});

			document.getElementById('capturar').addEventListener('click', function(){

				context.drawImage(video,0,0,400,300);
			});

		})();
});