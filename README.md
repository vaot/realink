## Team
* Victor Andrey Oliveira Teles
* Joshil Patel
* Hugo Liu
* Jon Wu
* Steven Yan


## Web Application Name: Realink

## Overview:

Realink is a web application that pulls relevant news articles from top news sites and ranks them based on popularity. Popularity is judged by where those links are trending on various social network platforms such as Facebook, Twitter, Reddit, etc. Like, Retweet, Share, and Comment data from those social network platforms are analyzed to predict which links are trending and pushed towards the top of the page, filtering out irrelevant topics.

## Need and Target Audience:

News websites are littered with a number of different topics, but not displayed based on user's preferences. These days people are often on the move and don’t have time to browse a dozen web pages to find topics that they are interested in, oftening missing out on key events that happen throughout the day.

The target audience are those who are out of the loop of current trending topics, wanting to quickly catch up on events occurring during the day. Realink allows user to log in, and quickly filter topics relevant to their interests, and also select which websites they would like to see links from. For example, if the user is interested in politics and science from BBC News, Realink will scan for links in those sections, then check against various social media platforms to see which of those links are trending, and display them in order filtering out the noise. This saves user's time, allowing user's to go about their day.

Most of the content available online is event-driven, meaning that it generates a series of events that make it fairly simple to measure engagement to some extent. Not only social media activities, but also the content itself might be linked and shared on other websites, and therefore it might have higher relevance to the user.

## Links:

Links will be sourced from
* CNN
* BBC
* Fox
* CBC
* NBC
* ABC
* CTV

## How Links are Ranked:

Data will be pulled from social media platforms using various API’s. This data will be used to rank each link.

News Site (CNN, Fox, etc.) - page views, comments, links to social media platforms.
Facebook - number of likes, comments, and number of shares.
Twitter - number of retweets, shares, and likes.
Reddit - number of links of posted, upvotes, and comments.


## Design and Features:

The features of Realink include link ranking, and modularity by preference filtering.

Because Realink is a go-to application for quick digestion of trending news content, the interface will be light and simple to use. A column to the left of the page lists filters of the various topics pulled from the news sites such as Sports, Science, Politics, Entertainment, etc. The column to the right of the page lists filters of the various news websites these links come from. These filters allow the user to select exactly what topic they are interested in, and what websites they would like these links to come from.

Users can also save links for later viewing in case they cannot get through all of their displayed links.

Users can tag and make comments to encourage discussion.

Users can share links with other users who may share in topics of interest.

## API’s:

Realink will make use of a set of api’s to accomplish the aggregation of articles and the raking of them. Data will pulled from standard rss feed from news outlets. In addition to using those rss feeds, we will be using Alexa, Google Trend and some other analytical tools api in order to properly come up with the best ranking algorithm.

## Implementation Overview:

Realink will be implemented with a stack that consist of Ruby on Rails and a client side frameworks such as React. We have chosen this stack such that frontend logic can be easily decoupled from the backend(Ruby on Rails), so that we all can work simultaneously with less chance of conflicts. Note that this stack is powerful in that it allow us to change UI based on requirement changes without affecting our backend. This approach is often called single-page application, and it’s become very popular due to its modularity and user experience.
More at on this at https://en.wikipedia.org/wiki/Single-page_application.
