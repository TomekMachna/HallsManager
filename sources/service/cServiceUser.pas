unit cServiceUser;

interface

type
  TServiceUser = class
    private
    //
    public
      function MakeLogin(pUsername, pPassword: string): Integer;
  end;

implementation

{ TServiceUser }

function TServiceUser.MakeLogin(pUsername, pPassword: string): Integer;
begin
  Result := 0;
end;

end.
