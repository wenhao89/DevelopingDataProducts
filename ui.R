shinyUI(
	pageWithSidebar(
	
	headerPanel("Miles per Gallon Prediction"),
	
	sidebarPanel(
		h5("This app predicts the miles per gallon for your car, given the number of cylinders it has, its displacement and its gross horsepower. Key in the relevant information in the fields below and click the Submit button to get your predicted miles per galllon."),
		textInput('cyl', 'Number of cylinders:'),
		textInput('disp', 'Displacement (in cubic inches):'),
		textInput('hp', 'Gross horsepower:'),
		submitButton('Submit')
	),
	
	mainPanel(
		h3('Results of Prediction'),
		h4('You entered'),
		verbatimTextOutput("inputcyl"),
		verbatimTextOutput("inputdisp"),
		verbatimTextOutput("inputhp"),
		h4('Which resulted in a prediction of'),
		verbatimTextOutput("prediction")
	)
	)
)