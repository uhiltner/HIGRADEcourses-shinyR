# function checks for missing packages and ... 
# ... loads/installs them automatically.
# It takes one argument: a character string holding the package names
packages_needed <- function(x){
    for(i in x){
        # require() returns TRUE invisibly if it was able to load package
        if(!require( i , character.only = TRUE) ){
            #  If package was not able to be loaded then install
            install.packages(i, dependencies = TRUE)
            #  Load package after installing. 
            library(i, character.only = TRUE ) # library() will throw an exception if the install wasn't successful
        }
    }
}