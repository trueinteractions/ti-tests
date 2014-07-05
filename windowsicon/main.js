/* Launch our main window with the following options */
global.mainWindow = TIWindow.create(
	{
		url:'index.html', 
		title:'True Interactions', 
		width:800, 
		height:600,
		position:"center"
	});
global.mainWindow.showDebugWindow();

global.mainWindow.onClose(function(e) {
	console.log("onClose fired.");
	Application.getCurrentProcess().exit({code:0});
});