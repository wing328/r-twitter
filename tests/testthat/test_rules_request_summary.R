# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test RulesRequestSummary")

model_instance <- RulesRequestSummary$new()

test_that("created", {
  # tests for the property `created` (integer)
  # Number of user-specified stream filtering rules that were created.

  # uncomment below to test the property
  # expect_equal(model.instance$`created`, "EXPECTED_RESULT")
})

test_that("invalid", {
  # tests for the property `invalid` (integer)
  # Number of invalid user-specified stream filtering rules.

  # uncomment below to test the property
  # expect_equal(model.instance$`invalid`, "EXPECTED_RESULT")
})

test_that("not_created", {
  # tests for the property `not_created` (integer)
  # Number of user-specified stream filtering rules that were not created.

  # uncomment below to test the property
  # expect_equal(model.instance$`not_created`, "EXPECTED_RESULT")
})

test_that("valid", {
  # tests for the property `valid` (integer)
  # Number of valid user-specified stream filtering rules.

  # uncomment below to test the property
  # expect_equal(model.instance$`valid`, "EXPECTED_RESULT")
})

test_that("deleted", {
  # tests for the property `deleted` (integer)
  # Number of user-specified stream filtering rules that were deleted.

  # uncomment below to test the property
  # expect_equal(model.instance$`deleted`, "EXPECTED_RESULT")
})

test_that("not_deleted", {
  # tests for the property `not_deleted` (integer)
  # Number of user-specified stream filtering rules that were not deleted.

  # uncomment below to test the property
  # expect_equal(model.instance$`not_deleted`, "EXPECTED_RESULT")
})
