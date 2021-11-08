test_that("litre_per_hour", {
    expect_equal(litre_per_hour(0.02, 0.5), 0.6)
})

test_that("gram_per_hour", {
    expect_equal(gram_per_hour(200, 0.02, 0.5), 5, tolerance = 1e-2)
})

test_that("cde", {
    expect_equal(cde_gram_per_hour(200, 0.02, 349, 2), 6964, tolerance = 1e-6)
})

test_that(".molar_volume", {
    expect_equal(.molar_volume(273.15, 101.325), 22.414, tolerance = 1e-5)
})
