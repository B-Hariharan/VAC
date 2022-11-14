library(robotstxt)
library(rvest)
url <- "https://stats.espncricinfo.com/ci/engine/records/batting/most_runs_career.html?id=117;type=trophy"
path = paths_allowed(url)
#html from website
web = read_html(url)
View(web)
players <- web %>% html_nodes(".data-link")%>% html_text()
View(players)
span <- web %>%html_nodes(".data2 .left+ .left") %>% html_text()
View(span)
matches<- web %>%html_nodes(".data2 .left+ .padAst") %>% html_text()
View(matches)
runs<- web %>% html_nodes("td+ td b") %>% html_text()
View(runs)

#creating dataframe
espncricinfo <- data.frame(players,span,matches,runs)
View(espncricinfo)
#save
write.csv(espncricinfo,"espncricinfo.csv")