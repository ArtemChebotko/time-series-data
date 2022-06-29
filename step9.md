<div class="top">

# Design query Q5
### [◂](command:katapod.loadPage?step8){.steps} Step 9 of 11 [▸](command:katapod.loadPage?step10){.steps}
</div>

Retrieve time series with a high resolution of 60 seconds for metric `temperature`, 
group `House A` and time range [`2020-10-04 23:59:00`,`2020-10-05 00:01:00`]; 
order by timestamp (desc) and source (asc):

<details>
  <summary>Solution</summary>

```
SELECT * 
FROM time_series.series_by_metric_high
WHERE group = 'House A'
  AND metric = 'temperature'
  AND timestamp >= '2020-10-04 23:59:00'
  AND timestamp <= '2020-10-05 00:01:00';
```

</details>

[continue](command:katapod.loadPage?step10){.orange_bar}
