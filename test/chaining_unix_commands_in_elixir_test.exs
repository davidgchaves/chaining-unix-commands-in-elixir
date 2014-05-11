defmodule ChainingUnixCommandsInElixirTest do
  use ExUnit.Case

  test "'fake_ps_ax' outputs some processes" do
    output = """
      PID TTY           TIME CMD
      451 ??         0:00.07 /Library/DropboxHelperTools/Dropbox_u501/dbfseventsd
      489 ??         0:00.02 com.apple.audio.SandboxHelper
      492 ??         0:00.09 com.apple.coremedia.videodecoder
      502 ??         0:00.03 /usr/libexec/spindump_agent
      209 ttys000    0:00.53 -zsh
      641 ttys000    0:00.31 vim
      643 ttys000    0:00.00 bash -c (ps -ax) >/var/folders/nk/4_hb83m93jqc9ghg76wxxl5c0000gn/T/vOcKTkZ/6 2>&1
      644 ttys000    0:00.00 ps -ax
      216 ttys001    0:00.19 -zsh
    """

    assert Unix.fake_ps_ax == output
  end
end
