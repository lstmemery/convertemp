
library(testthat)
source("./../../R/convertemp.R", local = TRUE)

context("Testing conversion")

test_that('celsius_to_fahr converts correctly', {
  expect_equal(celsius_to_fahr(-273.15), -459.67)
  expect_equal(celsius_to_fahr(-20), -4)
  expect_equal(celsius_to_fahr(0), 32)
  expect_equal(celsius_to_fahr(20), 68)
  expect_equal(celsius_to_fahr(100), 212)
})

test_that('fahr_to celsius converts correctly', {
  expect_equal(fahr_to_celsius(-459.67), -273.15)
  expect_equal(fahr_to_celsius(-4), -20)
  expect_equal(fahr_to_celsius(32), 0)
  expect_equal(fahr_to_celsius(68), 20)
  expect_equal(fahr_to_celsius(212), 100)
})

test_that('celsius_to_kelvin converts correctly', {
  expect_equal(celsius_to_kelvin(-273.15), 0)
  expect_equal(celsius_to_kelvin(-20), 253.15)
  expect_equal(celsius_to_kelvin(0), 273.15)
  expect_equal(celsius_to_kelvin(20), 293.15)
  expect_equal(celsius_to_kelvin(100), 373.15)
})

test_that('celsius_to_kelvin converts correctly', {
  expect_equal(kelvin_to_celsius(0), -273.15)
  expect_equal(kelvin_to_celsius(253.15), -20)
  expect_equal(kelvin_to_celsius(273.15), 0)
  expect_equal(kelvin_to_celsius(293.15), 20)
  expect_equal(kelvin_to_celsius(373.15), 100)
})

test_that('fahr_to celsius converts correctly', {
  expect_equal(fahr_to_kelvin(-459.67), 0)
  expect_equal(fahr_to_kelvin(-4), 253.15)
  expect_equal(fahr_to_kelvin(32), 273.15)
  expect_equal(fahr_to_kelvin(68), 293.15)
  expect_equal(fahr_to_kelvin(212), 373.15)
})

test_that('fahr_to celsius converts correctly', {
  expect_equal(kelvin_to_fahr(0), -459.67)
  expect_equal(kelvin_to_fahr(253.15), -4)
  expect_equal(kelvin_to_fahr(273.15), 32)
  expect_equal(kelvin_to_fahr(293.15), 68)
  expect_equal(kelvin_to_fahr(373.15), 212)
})

test_that('celsius_to_fahr does not go below zero', {
  expect_error(celsius_to_fahr(-280))
})

test_that('celsius_to_kelvin does not go below zero', {
  expect_error(celsius_to_kelvin(-280))
})

test_that('fahr_to_celsius does not go below zero', {
  expect_error(fahr_to_celsius(-460))
})

test_that('fahr_to_kelvin does not go below zero', {
  expect_error(fahr_to_kelvin(-460))
})

test_that('kelvin_to_celsius does not go below zero', {
  expect_error(kelvin_to_celsius(-1))
})

test_that('kelvin_to_fahr does not go below zero', {
  expect_error(kelvin_to_fahr(-1))
})


test_that('celsius_to_fahr must be a number', {
  expect_error(celsius_to_fahr("cold"))
  expect_error(celsius_to_fahr(c('h', 'o', 't')))
})

test_that('celsius_to_kelvin must be a number', {
  expect_error(celsius_to_kelvin("cold"))
  expect_error(celsius_to_kelvin(c('h', 'o', 't')))
})

test_that('fahr_to_celsius must be a number', {
  expect_error(fahr_to_celsius("cold"))
  expect_error(fahr_to_celsius(c('h', 'o', 't')))
})

test_that('fahr_to_kelvin must be a number', {
  expect_error(fahr_to_kelvin("cold"))
  expect_error(fahr_to_kelvin(c('h', 'o', 't')))
})

test_that('kelvin_to_celsius must be a number', {
  expect_error(kelvin_to_celsius("cold"))
  expect_error(kelvin_to_celsius(c('h', 'o', 't')))
})

test_that('kelvin_to_fahr must be a number', {
  expect_error(kelvin_to_fahr("cold"))
  expect_error(kelvin_to_fahr(c('h', 'o', 't')))
})
