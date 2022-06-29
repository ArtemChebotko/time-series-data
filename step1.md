<div class="top">

# Create a keyspace
### [◂](command:katapod.loadPage?intro){.steps} Step 1 of 11 [▸](command:katapod.loadPage?step2){.steps}
</div>

Create the `time_series` keyspace:
```
cqlsh -e "

CREATE KEYSPACE time_series
WITH replication = {
  'class': 'NetworkTopologyStrategy', 
  'DC-Houston': 1 };"
```

[continue](command:katapod.loadPage?step2){.orange_bar}