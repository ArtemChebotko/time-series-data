<div class="top">

# Design query Q4
### [◂](command:katapod.loadPage?step7){.steps} Step 8 of 11 [▸](command:katapod.loadPage?step9){.steps}
</div>

Retrieve time series with a low resolution of 60 minutes for group `House A`, 
sources `Refrigerator A1` and `Freezer A1`, and time range [`2020-10-05 12:00:00`,`2020-10-05 15:00:00`]; 
order by source (asc), timestamp (desc) and metric (asc):

<details>
  <summary>Solution</summary>

```
SELECT * 
FROM time_series.series_by_source_low
WHERE group = 'House A'
  AND year = 2020
  AND source IN ('Refrigerator A1','Freezer A1')
  AND timestamp >= '2020-10-05 12:00:00'
  AND timestamp <= '2020-10-05 15:00:00';
```

</details>

[continue](command:katapod.loadPage?step9){.orange_bar}
