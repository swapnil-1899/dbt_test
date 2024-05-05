## Description & motivation

Created staging and intermediate models to develop marts models as per business requirement.

#### New models

dim_music_tracks : This model is developed to join tracks with genres, albums, artists and media_types 
dim_music_playlists : This model is developed to join playlists with tracks, genres, albums, artists and media_types 
fct_music_sales : This model is developed to get all information using intermediate models 

#### Changes to existing models:

Created staging and intermediate models to develop marts models as per business requirement.

## Checklist:

- [ ] My pull request represents one logical piece of work.
- [ ] My commits are related to the pull request and look clean.
- [ ] My SQL follows the style guide.
- [ ] I have materialized my models appropriately.
- [ ] I have added appropriate tests and documentation to any new models.