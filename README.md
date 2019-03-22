## Team Members
* Victor Andrey Oliveira Teles
* Joshil Patel
* Hugo Liu
* Jon Wu
* Steven Yan


## Web Application Name: Realink

## Overview:

Realink is a web application that pulls relevant news articles from top news sites and ranks them based on popularity. Popularity is judged where the links are trending on social network platforms such as Facebook, Twitter, Reddit, etc. The links get popular when the users Retweet, Share, and Comment. The collected data is analyzed to predict which links are trending and pushed towards the top of the page, filtering out irrelevant topics.

## Need and Target Audience:

News websites are littered with a number of different topics, which are not displayed based on their users preferences. People don’t have time to browse a dozen pages to find topics that they are interested in and miss out on key events that happen throughout the day.

The target audience is users who are out of the loop of current trending topics, wanting to quickly catch up on events occurring during the day. 
- Realink allows a user to log in, and filter topics relevant to their interests.
- Select websites they would like to see links from. For example, Realink will scan for the links users intereseted and check against various social media platforms. The links will be displayed in order of trendings to filter out the noise. Saves users time.

Most of the content available online is event-driven, it generates a series of events that make it fairly simple to measure engagement to some extent. Social media activities and the content itself might be linked and shared on other websites making it relevance higher to the user.

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

News Site (CNN, Fox, etc.) - page views, comments, links to social media platforms
Facebook - number of likes, comments, and number of shares
Twitter - number of retweets, shares, and likes
Reddit - number of links of posted, upvotes, and comments


## Design and Features:

The features of Realink include link ranking and modularity by preference filtering.

Realink is a go-to application for quick digestion of trending news content, the interface will be light and simple to use. 
- The column to the left of the page lists filters of the various topics pulled from the news sites such as Sports, Science, Politics, Entertainment, etc. 
- The column to the right of the page lists filters of the various news websites these links come from. These filters allow the user to select what topic they are interested and the websites they would like the links to come from.
- Users can also save links for later viewing in case they cannot get through all of their displayed links.
- Users can tag and make comments to encourage discussion.
- Users can share links with other users who may share in topics of interest.

## API’s:

Realink will make use of a set of API’s to accomplish the aggregation of articles and their raking. Data will be pulled from standard RSS feed from the news outlets. More tools like Alexa and Google Trend will be used to come up with the best-ranking algorithm.

## Implementation Overview:

Realink will be implemented with a stack that consists of Ruby on Rails and client-side frameworks such as React. Selecting the stack, frontend logic can be easily decoupled from the backend(Ruby on Rails), so that all can work simultaneously with less chance of conflicts. This stack is powerful, allows us to change UI based on requirement changes without affecting our backend. The approach is  called a single-page application, and it’s become very popular due to its modularity and user experience.
More at on this at https://en.wikipedia.org/wiki/Single-page_application.
