program sisgefTransporControl;

{$R *.dres}

uses
  System.StartUpCopy,
  FMX.Forms,
  FMX.Dialogs,
  sisgef.view.index in 'src\view\sisgef.view.index.pas' {PageIndex},
  sisgef.view.pages.layout in 'src\view\pages\layout\sisgef.view.pages.layout.pas' {PageLayout},
  sisgef.view.components.headerpage in 'src\view\components\headerpage\sisgef.view.components.headerpage.pas' {ComponentHeaderPage: TFrame},
  sisgef.services.utils in 'src\services\sisgef.services.utils.pas';

{$R *.res}

begin

  if ParamStr(1) <> 'OK' then begin
  { Para usar ShowMessage, coloque Dialogs no uses }
    ShowMessage('Execute este programa através de SisGeF5.');
    Halt; { Finaliza }
  end;
  Application.Initialize;
  Application.CreateForm(TPageIndex, PageIndex);
  Application.CreateForm(TPageLayout, PageLayout);
  Application.Run;
end.
