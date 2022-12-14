# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test Place")

model_instance <- Place$new()

test_that("contained_within", {
  # tests for the property `contained_within` (array[character])

  # uncomment below to test the property
  # expect_equal(model.instance$`contained_within`, "EXPECTED_RESULT")
})

test_that("country", {
  # tests for the property `country` (character)
  # The full name of the county in which this place exists.

  # uncomment below to test the property
  # expect_equal(model.instance$`country`, "EXPECTED_RESULT")
})

test_that("country_code", {
  # tests for the property `country_code` (character)
  # A two-letter ISO 3166-1 alpha-2 country code.

  # uncomment below to test the property
  # expect_equal(model.instance$`country_code`, "EXPECTED_RESULT")
})

test_that("full_name", {
  # tests for the property `full_name` (character)
  # The full name of this place.

  # uncomment below to test the property
  # expect_equal(model.instance$`full_name`, "EXPECTED_RESULT")
})

test_that("geo", {
  # tests for the property `geo` (Geo)

  # uncomment below to test the property
  # expect_equal(model.instance$`geo`, "EXPECTED_RESULT")
})

test_that("id", {
  # tests for the property `id` (character)
  # The identifier for this place.

  # uncomment below to test the property
  # expect_equal(model.instance$`id`, "EXPECTED_RESULT")
})

test_that("name", {
  # tests for the property `name` (character)
  # The human readable name of this place.

  # uncomment below to test the property
  # expect_equal(model.instance$`name`, "EXPECTED_RESULT")
})

test_that("place_type", {
  # tests for the property `place_type` (PlaceType)

  # uncomment below to test the property
  # expect_equal(model.instance$`place_type`, "EXPECTED_RESULT")
})
