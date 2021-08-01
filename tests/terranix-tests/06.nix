{ lib, ... }:
{
  resource.test.name = lib.mkAssert (false) "test" {
    key = "value";
  };
}
