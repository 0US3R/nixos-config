let
  userName = "bernhard";
  email = "be.ju.le.97@gmail.com";
in
{
    programs.git = {
        enable = true;
        userName = userName;
        userEmail = email;
    };
}
