/* Launch our main window with the following options */
global.mainWindow = TIWindow.create(
	{
		url:'webgl_cubes.html', 
		title:'True Interactions', 
		width:800, 
		height:550,
		position:"center",
		frame:"transparent"
	});

/* Ensure the application closes when the user closes the window */
global.mainWindow.onClose(function(e) {
	Application.getCurrentProcess().exit({code:0});
})