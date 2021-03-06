includes = [
  "common-hooks.hcl"
]

scenario "scenario1" {
  tags = ["common", "sample"]
  when "a and b are added" {
    set result {
      value = a + b
    }
  }
  then "the result is the expected"{
    assert {
      assertion =  result==3
    }
  }
}
scenario "scenario2" {
  tags = ["common"]
  when "b is duplicated" {
    set result {
      value = 2 * b
    }
  }
  then "verify the result"{
    assert {
      assertion = result==4
    }
  }
}