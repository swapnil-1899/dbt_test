with playlist_tracks as (
    select * from {{ ref('stg_music__playlist_tracks') }}
),

playlists as (
    select * from {{ ref('stg_music__playlists') }}
),

tracks_joined as (
    select * from {{ ref('int_tracks_joined_to_albums_artists_genre_mediatype') }}
),

joined as (
    select
        playlists.playlist_id,
        playlist_tracks.track_id,
        tracks_joined.album_id,
        tracks_joined.mediatype_id,
        tracks_joined.genre_id,
        playlists.playlist_name,
        tracks_joined.track_name,
        tracks_joined.track_composer,
        tracks_joined.album_title,
        tracks_joined.mediatype_name,
        tracks_joined.genre_name,
        tracks_joined.track_length_ms,
        tracks_joined.track_length_seconds,
        tracks_joined.track_length_mins,
        tracks_joined.bytes,
        tracks_joined.unit_price
    from tracks_joined 
    left join playlist_tracks 
        on tracks_joined.track_id = playlist_tracks.track_id
    left join playlists 
        on playlists.playlist_id = playlist_tracks.playlist_id
)

select * from joined