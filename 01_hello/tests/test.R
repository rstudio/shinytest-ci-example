app <- ShinyDriver$new("..")
app$snapshotInit("test")

app$snapshot()
app$setInputs(bins = 40)
app$snapshot()
app$setInputs(bins = 1)
app$snapshot()
