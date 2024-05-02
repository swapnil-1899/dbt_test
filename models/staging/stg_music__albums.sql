with albums as(
    select * from {{ source('music', 'album') }}
)

select 
    albumid as album_id,
    title as album_title,
    artistid as artist_id
from albums