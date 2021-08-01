{ lib, ... }:
{
  resource.test.name = lib.mkAssert (true) "test" {
    key = "value";
  };
}
