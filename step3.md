<div class="top">

# Populate tables using DSBulk
### [◂](command:katapod.loadPage?step2){.steps} Step 3 of 11 [▸](command:katapod.loadPage?step4){.steps}
</div>

Load data into table `sources_by_group`:
```
dsbulk load -url assets/sources.csv     \
            -k time_series              \
            -t sources_by_group         \
            -header true                \
            -logDir /tmp/logs
```

Retrieve rows from table `sources_by_group`:
```
cqlsh -e "
SELECT group, source, description, 
       characteristics['Model number'] 
FROM time_series.sources_by_group;"      
```

Load data into table `metrics`:
```
dsbulk load -url assets/metrics.csv     \
            -k time_series              \
            -t metrics                  \
            -header true                \
            -logDir /tmp/logs
```

Retrieve rows from table `metrics`:
```
cqlsh -e "SELECT * FROM time_series.metrics;"      
```

Load data into tables `series_by_source_high` and `series_by_metric_high`:
```
dsbulk load -url assets/series_high_resolution.csv  \
            -k time_series                          \
            -t series_by_source_high                \
            -header true                            \
            -logDir /tmp/logs
            
dsbulk load -url assets/series_high_resolution.csv  \
            -k time_series                          \
            -t series_by_metric_high                \
            -header true                            \
            -logDir /tmp/logs                        
```

Retrieve rows from tables `series_by_source_high` and `series_by_metric_high`:
```
cqlsh -e "SELECT * FROM time_series.series_by_source_high LIMIT 5;"   
cqlsh -e "SELECT * FROM time_series.series_by_metric_high LIMIT 5;"                                         
```

Load data into tables `series_by_source_low` and `series_by_metric_low`:
```
dsbulk load -url assets/series_low_resolution.csv   \
            -k time_series                          \
            -t series_by_source_low                 \
            -header true                            \
            -logDir /tmp/logs
            
dsbulk load -url assets/series_low_resolution.csv   \
            -k time_series                          \
            -t series_by_metric_low                 \
            -header true                            \
            -logDir /tmp/logs
```

Retrieve rows from tables `series_by_source_low` and `series_by_metric_low`:
```
cqlsh -e "SELECT * FROM time_series.series_by_source_low LIMIT 5;"   
cqlsh -e "SELECT * FROM time_series.series_by_metric_low LIMIT 5;"      
```

Load data into table `statistics_by_source_metric`:
```
dsbulk load -url assets/statistics_by_source_metric.csv \
            -k time_series                              \
            -t statistics_by_source_metric              \
            -header true                                \
            -logDir /tmp/logs
```

Retrieve rows from table `statistics_by_source_metric`:
```
cqlsh -e "SELECT * FROM time_series.statistics_by_source_metric LIMIT 5;"      
```

[continue](command:katapod.loadPage?step4){.orange_bar}