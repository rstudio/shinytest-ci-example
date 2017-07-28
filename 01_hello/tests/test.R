app <- ShinyDriver$new("..")
app$snapshotInit("test")

app$snapshot()
app$setInputs(bins = 50)
app$snapshot()
app$setInputs(bins = 1)
app$snapshot()
