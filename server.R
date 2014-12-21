mpg <- function(cyl, disp, hp) {
	34.18492 - 1.22742*cyl -0.01884*disp - 0.01468*hp 	
} 

shinyServer(
	function(input, output) {
		output$inputcyl <- renderPrint({input$cyl})
		output$inputdisp <- renderPrint({input$disp})
		output$inputhp <- renderPrint({input$hp})
		output$prediction <- renderPrint({mpg(as.numeric(input$cyl), as.numeric(input$disp), as.numeric(input$hp))})
	}
)