# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test FullTextEntities")

model_instance <- FullTextEntities$new()

test_that("annotations", {
  # tests for the property `annotations` (array[FullTextEntitiesAnnotationsInner])

  # uncomment below to test the property
  # expect_equal(model.instance$`annotations`, "EXPECTED_RESULT")
})

test_that("cashtags", {
  # tests for the property `cashtags` (array[CashtagEntity])

  # uncomment below to test the property
  # expect_equal(model.instance$`cashtags`, "EXPECTED_RESULT")
})

test_that("hashtags", {
  # tests for the property `hashtags` (array[HashtagEntity])

  # uncomment below to test the property
  # expect_equal(model.instance$`hashtags`, "EXPECTED_RESULT")
})

test_that("mentions", {
  # tests for the property `mentions` (array[MentionEntity])

  # uncomment below to test the property
  # expect_equal(model.instance$`mentions`, "EXPECTED_RESULT")
})

test_that("urls", {
  # tests for the property `urls` (array[UrlEntity])

  # uncomment below to test the property
  # expect_equal(model.instance$`urls`, "EXPECTED_RESULT")
})
