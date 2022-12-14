# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test TweetWithheld")

model_instance <- TweetWithheld$new()

test_that("copyright", {
  # tests for the property `copyright` (character)
  # Indicates if the content is being withheld for on the basis of copyright infringement.

  # uncomment below to test the property
  # expect_equal(model.instance$`copyright`, "EXPECTED_RESULT")
})

test_that("country_codes", {
  # tests for the property `country_codes` (set[character])
  # Provides a list of countries where this content is not available.

  # uncomment below to test the property
  # expect_equal(model.instance$`country_codes`, "EXPECTED_RESULT")
})

test_that("scope", {
  # tests for the property `scope` (character)
  # Indicates whether the content being withheld is the &#x60;tweet&#x60; or a &#x60;user&#x60;.

  # uncomment below to test the property
  # expect_equal(model.instance$`scope`, "EXPECTED_RESULT")
})
