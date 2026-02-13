# Notebook Editing Notes

- **Chronicling America API**
  - Should explain that it's now a general LoC API rather than just Chronicling America
  - Updated API: https://libraryofcongress.github.io/data-exploration/loc.gov%20JSON%20API/Chronicling_America/README.html

- **OC Measurements**
  - Do we have an example of what the original query response looks like? bc the original search doesn't work, and search updated with taxon query still doesn't work

- **Datasette API**
  - CSTM api is dead on Heroku
    - https://cstm-demo.herokuapp.com/cstm/fulldata.json

- **Archdata in R**
  - Absolutely bunged, can't retrieve any data bc of cloudflare block

- **LOD and SPARQL**
  - Python
    - Simple RDF Example: The only museum I'm able to find with LOD is the [Smithsonian American Art Museum](https://americanart.si.edu/about/lod)
    - Wikidata: Works generally, but diagrams can't be drawn since `sparqlkernel` is so out of date it's using obsolete code
    - Nomisma works! But stopped using Jena so I had to do some really imprecise "around Athens" math lol
  - R
    - SPARQL library was archived in 2022 after not being updated for 10yrs
    - `glitter` only "current" SPARQL library but also hasn't been updated in 3yrs --> doesn't seem to work with current version of R

- **Spatial Arch**
  - Data & maps works but need to test on py 3.6 + geopandas 0.4.0 to confirm results
    - Same w linlithgow
  - Used this process to get gdal working locally: https://gis.stackexchange.com/questions/481539/install-gdal-into-conda-environment

- **Scraping**
  - PAS suffering strikes again
  - Updated both R activities but both require R Studio to work...


