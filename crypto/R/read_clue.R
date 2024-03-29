#' Reads a .clue formated file.
#'
#' @param filepath string containing relative path to .clue file
#' @return list containing data from the file
#' @export
#' @examples
#' read_clue("../clues/filename.clue")

read_clue<-function(filepath) {

	# read file line-by-line
	line<-readLines(filepath)

	# eval first line
	a<-eval(parse(text=line[1]))
	if(length(a) > 1) {
		dim<-sqrt(length(a))
		a<-matrix(a, dim)
	}
	
	# eval second line
	b<-eval(parse(text=line[2]))
	if(length(b) > 1 && length(b) != dim(a)[2]) stop ("b must have length equal to number of columns in the a matrix")
	
	# remove all white spaces from third line
	c_text<-gsub("[[:blank:]]", "", line[3])

	if(is.numeric(a) == F || is.numeric(b) == F) stop("a and b must be numeric")

	# consolidate into data vector
	data<-list(a=a, b=b, cyphertext=c_text)

	return(data)
}
