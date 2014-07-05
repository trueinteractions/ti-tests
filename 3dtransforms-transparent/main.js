/* Launch our main window with the following options */
global.mainWindow = TIWindow.create(
	{
		url:'index.html', 
		title:'True Interactions', 
		width:800, 
		height:600,
		position:"center"
	});

/* Ensure the application closes when the user closes the window */
global.mainWindow.onClose(function(e) {
	Application.getCurrentProcess().exit({code:0});
})