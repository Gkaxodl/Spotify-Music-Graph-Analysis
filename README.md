# Spotify Music Graph Analysis

A Neo4j graph database project exploring relationships among Spotify tracks, artists, albums, and genres using Python, CSV data, and Cypher.

## Project Overview

This academic group project built a music knowledge graph from a Kaggle music dataset. The original workflow used Python to clean and restructure the data, exported the cleaned data into CSV files, imported those files into Neo4j, and then used Cypher queries to explore relationships in the graph.

The project focused on two goals:

1. Build a music knowledge graph from a large real-world dataset.
2. Analyze relationships among tracks, artists, albums, and genres.

## Tools

- Python
- Neo4j
- Cypher
- CSV
- Kaggle dataset

## Data Preparation

The original project cleaned the music dataset by:

- Removing missing values
- Selecting relevant columns
- Removing duplicate `track_id` values
- Splitting records containing multiple artists

The cleaned data were organized into:

- `tracks.csv`
- `artists.csv`
- `albums.csv`
- `genres.csv`

## Graph Model

The Neo4j database used graph relationships including:

- `PERFORMED_BY`
- `BELONGS_TO`
- `HAS_GENRE`

These relationships allowed the project to move beyond flat tables and explore connections among music entities.

## Cypher Analysis

Seven query tasks were included in the original presentation:

1. Find highly popular tracks.
2. Find tracks containing "love" or "dream" in the title.
3. Find tracks by a specific artist (Harry Styles).
4. Find upbeat and happy tracks using danceability, valence, and popularity thresholds.
5. Update an artist name and reset it afterward.
6. Calculate average track popularity by genre.
7. Count tracks in the top genres.

The project also ran each query 10 times and reported average runtimes as part of the performance analysis.

The preserved Cypher statements from the original presentation are available in `cypher/queries.cypher`.

## Original Presentation

The original group presentation is included as [`Spotify Music Graph Project.pdf`](./Spotify%20Music%20Graph%20Project.pdf). It contains the project workflow, Neo4j query screenshots, reported runtimes, challenges, and lessons learned.

## Challenges

The project identified several practical database and data-cleaning challenges:

- Duplicate track IDs
- Multiple artists stored in one field
- Slow query performance
- Splitting artists into graph-friendly records
- Using batch processing during data preparation

## Lessons & Next Steps

The project highlighted the importance of data cleaning and query structure when working with graph databases. Proposed next steps included:

- Improving query optimization
- Adding additional song features such as tempo and vibe
- Building a recommendation system

## Repository Notes

The original source-code and CSV files are no longer available. This portfolio repository was reconstructed from the original group presentation. The Cypher queries included here were transcribed from query screenshots preserved in that presentation; missing source files have not been recreated or presented as original work.

## Repository Structure

```text
Spotify-Music-Graph-Analysis/
├── README.md
├── Spotify Music Graph Project.pdf
└── cypher/
    └── queries.cypher
```

## Contributors

Original academic group project by:

- Andrew H
- Cindy T
- Hannah R
