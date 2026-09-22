-- Count penguins by species

SELECT
  species AS PenguinSpecies,
  COUNT(*) AS PenguinCount
FROM
  bigquery-public-data.ml_datasets.penguins
GROUP BY
  species
ORDER BY
  PenguinCount DESC;
