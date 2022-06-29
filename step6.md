<div class="top">

# Design query Q2
### [◂](command:katapod.loadPage?step5){.steps} Step 6 of 11 [▸](command:katapod.loadPage?step7){.steps}
</div>

Find information about all metrics stored in bucket `all`; order by metric name (asc):

<details>
  <summary>Solution</summary>

```
SELECT * 
FROM time_series.metrics
WHERE bucket = 'all';
```

</details>

[continue](command:katapod.loadPage?step7){.orange_bar}