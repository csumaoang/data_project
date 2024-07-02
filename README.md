# Intro to Rails Data Project

The goal of this project is to create a Ruby on Rails application using data collected from one or more data sources. This is a two part project.

The first part involves creating the required database tables and pulling data from various data sources. The second part involves using Ruby on Rails to create reports, allow searching, and/or display visualizations based on this data.

## Data Source
The Zelda API provides detailed data on games, characters, bosses, and items from the Zelda universe, structured in JSON format. Each dataset includes specific fields such as names, descriptions, and unique IDs. For example, the games dataset include fields like:
```shell
name, description, developer, and released_date.
```
The data will be displayed on dedicated pages within a web application, allowing users to explore detailed information about each category.

## Usage in the Project
To store and manage this data, we will create database tables for 4 categories: 
```shell 
Games, Characters, Bosses, and Items.
```
The relationships between different datasets will be maintained by storing related game IDs in the respective tables. This structure allows for things such as viewing all games an item appears in or the characters encountered in a specific game.