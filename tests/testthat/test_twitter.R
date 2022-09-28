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

test_that("test poll with enum validation", {
  po <- PollOption$new("this is a label", 3, 3)
  expect_error(Poll$new("1365059861688410112", list(po), voting_status = "OPEN"), #OPEN is invalid enum value
                 "Error! \"OPEN\" cannot be assigned to `voting_status`. Must be \"open\", \"closed\".")
 
  # expect no error  
  Poll$new("1365059861688410112", list(po), voting_status = "open")
})
