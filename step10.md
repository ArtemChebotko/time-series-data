<div class="top">

# Design query Q6
### [◂](command:katapod.loadPage?step9){.steps} Step 10 of 11 [▸](command:katapod.loadPage?step11){.steps}
</div>

Retrieve time series with a low resolution of 60 minutes for metric `temperature`, 
group `House A` and time range [`2019-01-01 00:00:00`,`2019-01-01 06:00:00`]; 
order by timestamp (desc) and source (asc):

<details>
  <summary>Solution</summary>

```
SELECT * 
FROM time_series.series_by_metric_low
WHERE group = 'House A'
  AND year = 2019
  AND metric = 'temperature'
  AND timestamp >= '2019-01-01 00:00:00'
  AND timestamp <= '2019-01-01 06:00:00';
```

</details>

[continue](command:katapod.loadPage?step11){.orange_bar}
