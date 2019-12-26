# Animating a basketball game with gganimate

![Example](animations/raptors_clippers-201912110.gif)

I post these animations to NBA subreddits, like [r/TorontoRaptors](https://www.reddit.com/r/torontoraptors/)

## Details

This began as a Toronto Raptors only graph. But realized, people like to watch when their team wins so it has been adjusted to glorify the winning team. 

I use `gganimate` and `ggplot2` to drop basketballs to the winning team's player whenever they score. Emojis were added with `ggimage` to replace the original points in geom_point.

The data is play-by-play data from [basketball-reference.com](https://www.basketball-reference.com/boxscores/pbp/201912250TOR.html). I use `rvest` to scrape the table . I clean it so it knows which team wins and prepares the animation accordingly.

A script is included to download all the team logos off Wikipedia. I recommend using it. I applied the transparency to the team image with `png`.

Finally, I scraped [teamcolorcodes.com](https://teamcolorcodes.com/nba-team-color-codes/) to find the team's main colour and add it to the plot title using `ggtext`.

## Requirements

```
library(tidyverse) # for the basics
library(gganimate) # for animation and gifs
library(ggimage) # for inserting the basketball emojis
library(rvest) # for scraping data from websites
library(lubridate) # for date manipulation
library(png) # for image manipulation
library(grid) # for custom plot manipulation
library(ggtext) # for colouring the plot title
library(extrafont) # for nicer fonts
```

## See more 

See more animations in the /animations folder.
