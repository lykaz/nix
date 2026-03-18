{ pkgs, ... }:

{
  homebrew.casks = [ "keyboard-cowboy" ];

  # This was copied from my original keyboard-cowboy config
  home.file.".config/keyboard-cowboy/config.json".text = builtins.toJSON {
    name = "keyboard-cowboy-config";
    groups = [
      {
        color = "#3984F7";
        id = "F2A695F5-0B18-4520-A63D-1A9082F706C5";
        name = "Rebinding";
        symbol = "app.connected.to.app.below.fill";
        workflows = [
          # --------- Backslash ---------
          {
            name = "backslash";
            id = "93DC60D7-37F1-4346-B4B5-202F809A9D19";
            execution = "serial";
            trigger.keyboardShortcuts = {
              allowRepeat = false;
              shortcuts = [
                {
                  id = "1D0BB543-5962-4598-ABBC-B10103B00DD7";
                  key = "ß";
                  modifiers = [ "r~" ];
                }
              ];
            };
            commands = [
              {
                keyboardCommand.kind.key.command.keyboardShortcuts = [
                  { key = "7"; modifiers = [ "$" "r~" ]; }
                ];
              }
            ];
          }
          # --------- Pipe ---------
          {
            name = "pipe";
            id = "B4421F1A-E9C5-4BFB-B07B-B70D1A8117A0";
            execution = "serial";
            trigger.keyboardShortcuts = {
              allowRepeat = false;
              shortcuts = [{ key = "<"; modifiers = [ "r~" ]; }];
            };
            commands = [
              {
                keyboardCommand.kind.key.command.keyboardShortcuts = [
                  { key = "7"; modifiers = [ "r~" ]; }
                ];
              }
            ];
          }
          # --------- Backdelete ---------
          {
            name = "back-delete";
            id = "713F217F-7B42-4970-85F6-0F61B0BDC319";
            execution = "serial";
            trigger.keyboardShortcuts = {
              allowRepeat = false;
              shortcuts = [{ key = "⌫"; modifiers = [ "r@" ]; }];
            };
            commands = [
              {
                keyboardCommand.kind.key.command.keyboardShortcuts = [
                  { key = "⌦"; }
                ];
              }
            ];
          }
          # --------- Tilde ---------
          {
            name = "tilde";
            id = "12234-7B42-4970-85F6-0F61B0BDC319";
            execution = "serial";
            trigger.keyboardShortcuts = {
              allowRepeat = false;
              shortcuts = [{ key = "+"; modifiers = [ "r~" ]; }];
            };
            commands = [
              {
                keyboardCommand.kind.key.command.keyboardShortcuts = [
                  { key = "n"; modifiers = [ "r~" ]; }
                ];
              }
            ];
          }
        ];
      }
    ];
  };
}