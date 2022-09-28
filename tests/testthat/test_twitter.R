# Test Twitter client
context("Test Twitter client")


test_that("test Media, AnimatedGif with discriminator mapping", {
  ag <- '{"preview_image_url": "https://something.com","type":"animated_gif","height":1,"width":2}'

  a <- ApiClient$new()$deserialize(ag, "Media", loadNamespace("twitter"))
  expect_equal(class(a)[1], "AnimatedGif")
  expect_equal(a$preview_image_url, "https://something.com")
  expect_equal(a$type, "animated_gif")
  expect_equal(a$height, 1)
  expect_equal(a$width, 2)
})
