unit cUser;

interface

type
  TUser = class
    private
      FId : Integer;
      FName : string;
      FSureName : string;
      FPhoneNumber : string;
      FEmail : string;
      FIsAdmin : SmallInt;
      FIdLocality : Integer;
      FDeleted : SmallInt;
    public
      property Id : Integer read FId write FId;
      property Name : string read FName write FName;
      property SureName : string read FSureName write FSureName;
      property PhoneNumber : string read FPhoneNumber write FPhoneNumber;
      property Email : string read FEmail write FEmail;
      property IsAdmin : SmallInt read FIsAdmin write FIsAdmin;
      property IdLocality : Integer read FIdLocality write FIdLocality;
      property Deleted : SmallInt read FDeleted write FDeleted;
      constructor Create(); overload;
  end;

implementation

{ TUser }

constructor TUser.Create;
begin
  inherited Create;
  FId := 0;
  FName := '';
  FSureName := '';
  FPhoneNumber := '';
  FEmail := '';
  FIsAdmin := 0;
  FIdLocality := 0;
  FDeleted := 0;
end;

end.
