app <- ShinyDriver$new("..", seed = 123)
app$snapshotInit("mytest")

app$snapshot()
app$setInputs(n = 90)
app$snapshot()
app$setInputs(dist = "unif")
app$snapshot()
# Skip Summary tab for now because summary.default behavior changed between R
# 3.3.3 and R 3.4.0. This causes test failures on Travis when the expected
# results were taken in 3.4.0 and the app is tested on R 3.3.3. When Travis's
# r-oldrel switches from 3.3.3 to 3.4.0, this can be restored.
# app$setInputs(tabs = "Summary")
# app$snapshot()
app$setInputs(tabs = "Table")
app$snapshot()
app$setInputs(tabs = "Plot")
app$setInputs(dist = "exp")
app$snapshot()
