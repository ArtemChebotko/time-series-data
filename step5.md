<div class="top">

# Design query Q1
### [◂](command:katapod.loadPage?step4){.steps} Step 5 of 11 [▸](command:katapod.loadPage?step6){.steps}
</div>

Find information about all data sources in group `House A`:

<details>
  <summary>Solution</summary>

```
SELECT group, source, description, 
       characteristics['Model number'] 
FROM sources_by_group
WHERE group = 'House A';
```

</details>

[continue](command:katapod.loadPage?step6){.orange_bar}