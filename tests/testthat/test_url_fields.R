# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test UrlFields")

model_instance <- UrlFields$new()

test_that("description", {
  # tests for the property `description` (character)
  # Description of the URL landing page.

  # uncomment below to test the property
  # expect_equal(model.instance$`description`, "EXPECTED_RESULT")
})

test_that("display_url", {
  # tests for the property `display_url` (character)
  # The URL as displayed in the Twitter client.

  # uncomment below to test the property
  # expect_equal(model.instance$`display_url`, "EXPECTED_RESULT")
})

test_that("expanded_url", {
  # tests for the property `expanded_url` (character)
  # A validly formatted URL.

  # uncomment below to test the property
  # expect_equal(model.instance$`expanded_url`, "EXPECTED_RESULT")
})

test_that("images", {
  # tests for the property `images` (array[UrlImage])

  # uncomment below to test the property
  # expect_equal(model.instance$`images`, "EXPECTED_RESULT")
})

test_that("media_key", {
  # tests for the property `media_key` (character)
  # The Media Key identifier for this attachment.

  # uncomment below to test the property
  # expect_equal(model.instance$`media_key`, "EXPECTED_RESULT")
})

test_that("status", {
  # tests for the property `status` (integer)
  # HTTP Status Code.

  # uncomment below to test the property
  # expect_equal(model.instance$`status`, "EXPECTED_RESULT")
})

test_that("title", {
  # tests for the property `title` (character)
  # Title of the page the URL points to.

  # uncomment below to test the property
  # expect_equal(model.instance$`title`, "EXPECTED_RESULT")
})

test_that("unwound_url", {
  # tests for the property `unwound_url` (character)
  # Fully resolved url.

  # uncomment below to test the property
  # expect_equal(model.instance$`unwound_url`, "EXPECTED_RESULT")
})

test_that("url", {
  # tests for the property `url` (character)
  # A validly formatted URL.

  # uncomment below to test the property
  # expect_equal(model.instance$`url`, "EXPECTED_RESULT")
})
