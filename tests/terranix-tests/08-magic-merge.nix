{
  imports = [
    {
      resource.test = {
        a.bit.deeper.test2 = "test2";
        a.list = [ "list1" "list2" ];
      };
      resource.test.b = {
        test1 = "test1";
      };
    }
    { resource.test.b.test2 = "test2"; }
    { resource.test.a.bit.deeper.test4 = "test4"; }
    { resource.test.a.list = [ "list3" ]; }
  ];

}
