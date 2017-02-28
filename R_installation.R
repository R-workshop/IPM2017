
R_installation_list <- function(){
#install.packages("googlesheets")
library(googlesheets)



accept_list <- gs_url("https://docs.google.com/spreadsheets/d/1Z304Zn1WdEmDOPqrqydoMQNJspZsgBG7ZVnVxO6rzyE/edit#gid=0")
#accept_list <- gs_url("https://docs.google.com/spreadsheets/d/1Z304Zn1WdEmDOPqrqydoMQNJspZsgBG7ZVnVxO6rzyE/edit#gid=0")
accept_list <- gs_read_csv(accept_list)
accept_list <- as.matrix(accept_list)
#accept_list[,3] <- as.numeric(accept_list[,3])

email=""
print("Please insert your email address:")
while( !email %in% accept_list[,3] ){
email = readline()
if( !email %in% accept_list[,3] )
  print("This email address is not permitted by organizing committee, please try again:")
}

firstname <- accept_list[ accept_list[,3] == email ,1]
lastname <- accept_list[ accept_list[,3] == email ,2]

#x <- system("ipconfig", intern=TRUE)
#z <- x[grep("IPv4", x)]
#ip <- gsub(".*? ([[:digit:]])", "\\1", z)[1]

x <- system("getmac", intern=TRUE)
z <- x[4]
mac <- strsplit(z ,split = " ")[[1]][1]

os <- .Platform$OS.type

arch <- .Platform$r_arch

Rver <- R.version["version.string"]



#gs_delete(foo)

x <- system("ipconfig /all", intern=TRUE)

statu = "complete!"

a <- strsplit(mac,"")[[1]][c(17,16,14,13)]
b <- strsplit( as.character(Sys.time()) ,"" )[[1]][c(19,18,16,15,19)]
tr_code <-  paste(a[1],a[2],a[3],a[4],b[1],b[2],b[3],b[4],b[5],sep="")

#fld <- c("given name","sure name","email","IP add","MAC add",
#         "OS","arch","R_version","inst status")

add_user_inst <- c(firstname,lastname,email,mac,
                   os,arch,Rver,statu,tr_code)
add_user_inst <- as.character(add_user_inst)



R_instal <- gs_url("https://docs.google.com/spreadsheets/d/1uMFGX-btgXKX-7RLZQMz_LoefUQ7aL8bbx17JcKaGDU/edit#gid=0")


#foo <- gs_new("R-instalatio", ws = "sheet1", trim = TRUE
#              ,input = matrix( ncol=8,nrow=2) )
#foo[[8]] <- "public"

fooo <- gs_add_row(R_instal, ws = "sheet1",
                  input = add_user_inst )
#fooo <- gs_add_row(R_instal, ws = "sheet1",
#                   input = t(seq(1,5)) )


print("Congratulations! R and RStudio have been installed successfully")
print(paste("Your tracking code for this installation:",tr_code))
print("See you on the opening day of workshop")
print("Best Rigards,")
print("Organizing Committee of Hand on Statistics with R")


}