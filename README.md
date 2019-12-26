# Animating a basketball game with gganimate

![Example](animations/raptors_clippers-201912110.gif)

I post these animations to NBA subreddits, like [r/TorontoRaptors](https://www.reddit.com/r/torontoraptors/)

## Details

This began as a Toronto Raptors only graph. But I realized, people like to watch when their team win, so it has been adjusted to glorify the winning team. Check the issues to see potential improvements I'm working on.

I use `ggplot2` to create the base plot. Emojis were added with `ggimage` to replace the original points in geom_point. I then use `gganimate` to follow the scoring plays and drop basketballs on the winning team's player whenever they get a basket. 

The data is play-by-play data from [basketball-reference.com](https://www.basketball-reference.com/boxscores/pbp/201912250TOR.html). I use `rvest` to scrape the table . I extract player names and filter for scoring plays only. I also use conditional logic so it knows which team wins and prepares the title, logo, and animation accordingly.

I scraped [teamcolorcodes.com](https://teamcolorcodes.com/nba-team-color-codes/) to find the team's hex colour code and add it to the plot title using `ggtext`.

Finally, a script is included to download all the team logos off Wikipedia. I recommend using it. I apply the transparency to the team logo in the plot background with `png`.


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
