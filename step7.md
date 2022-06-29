<div class="top">

# Design query Q3
### [◂](command:katapod.loadPage?step6){.steps} Step 7 of 11 [▸](command:katapod.loadPage?step8){.steps}
</div>

Retrieve time series with a high resolution of 60 seconds for group `House A`, 
sources `Refrigerator A1` and `Freezer A1`, and time range [`2020-10-05 12:44:00`,`2020-10-05 12:47:00`]; 
order by timestamp (desc) and metric (asc):

<details>
  <summary>Solution</summary>

```
SELECT * 
FROM time_series.series_by_source_high
WHERE group = 'House A'
  AND source IN ('Refrigerator A1','Freezer A1')
  AND timestamp >= '2020-10-05 12:44:00'
  AND timestamp <= '2020-10-05 12:47:00';
```

</details>

[continue](command:katapod.loadPage?step8){.orange_bar}
