# get all the teams off wikipedia
url <- "https://en.wikipedia.org/wiki/National_Basketball_Association"

full_team_list <- read_html(url) %>%
  html_table(fill = TRUE) %>%
  .[3] %>%
  as.data.frame() %>%
  filter(!Team %in% c("Eastern Conference", "Western Conference")) %>%
  select(team = Team) 

team_urls <- full_team_list %>%
  mutate(team_web_form = str_replace_all(team, " ", "_"),
         url = "https://en.wikipedia.org/wiki/",
         team_url = paste0(url, team_web_form))

# download the images
for (i in team_urls$team_web_form){
  
  if(dir.exists(here::here("/team_images")) == FALSE) {
    dir.create(here::here("/team_images"))
  }
  
  imgsrc <- read_html(team_urls[str_detect(team_urls$team_url, i),]$team_url) %>%
    html_nodes("img") %>%
    html_attr('src')
  
  images <- data.frame(url = imgsrc)
  
  image_location <- images %>%
    mutate(url = as.character(url),
           url = paste0("https:", url)) %>%
    filter(str_detect(url, i) | str_detect(url, "SacramentoKings.svg") | str_detect(url, "Pistons_logo"),
           !str_detect(url, "1988")) %>%
    select(url) %>%
    head(1)
  
  download.file(image_location$url, destfile = here::here(str_glue("team_images/{basename(image_location$url)}")))
}