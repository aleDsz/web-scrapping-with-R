if (!("httr" %in% installed.packages())) {
	install.packages(c("httr", "xml2"))
}

library(httr)

actual_date <- Sys.Date()
year <- format(actual_date, "%Y")
uri <- paste0("https://feriadosbancarios.febraban.org.br/feriados.asp?ano=", year)

request <- GET(uri, add_headers("Content-Type" = "text/html; charset=utf-8"))
response <- content(request)

print(response)
