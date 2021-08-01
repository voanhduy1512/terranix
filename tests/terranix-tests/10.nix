{ config, ... }:
{
  data.ami.this = {
    name = "test";
  };

  module.eks = {
    source = "github.com/example/eks";
    ami = config.data.ami.this.attribute "id";
  };

  resource.test.this = {
    name = "this";
    dns = config.module.eks.attribute "cluster_id";
  };

  resource.test.that = {
    name = "that";
    ref = config.resource.test.this.attribute "computed_attribute";
  };
}
