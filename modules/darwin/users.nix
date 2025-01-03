{ config, pkgs, ... }: {
  users.users.self = {
    name = "self";
    home = "/Users/self";
  };
}
