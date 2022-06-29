<div class="top">

# Design query Q7
### [◂](command:katapod.loadPage?step10){.steps} Step 11 of 11 [▸](command:katapod.loadPage?finish){.steps}
</div>

Find daily min, max, median, mean and standard deviation values for 
a time series with source `Termostate A2`, metric `humidity` and 
date range [`2019-12-25`,`2020-01-07`]; order by date (desc):

<details>
  <summary>Solution</summary>

```
SELECT * 
FROM time_series.statistics_by_source_metric
WHERE source = 'Termostate A2'
  AND metric = 'humidity'
  AND date >= '2019-12-25'
  AND date <= '2020-01-07';
```

</details>

[continue](command:katapod.loadPage?finish){.orange_bar}
