<!DOCTYPE Template>
<Template>
 <Version>1.0</Version>
 <Name>SA_telnet_setaddloginpasswd</Name>
 <Contributor>SimpleSoft</Contributor>
 <Language>Tcl</Language>
 <Description>Sets the additional login passwd string that is to be expected by the telnet server.  If multiple passwords are to be supported, they can be specified by separating them with a comma.

This command is supported only in the telnet tcl interpretor.

Note:
   The Telenet Server Tcl commands are retained for backwards compatibility with earlier versions.  During the device definition, if you enable Telnet/CLI capability and specify the telnet modeling file and port number, then you do not need to specifiy the SA_start_telnet&quot; Tcl commands in the %init_action section of the device modeling file.  These commands will be automatically carried out for you.</Description>
 <InputList>
  <Input>
   <label>Password String</label>
   <type>1</type>
   <value>none</value>
   <variable>string</variable>
  </Input>
 </InputList>
 <OutputVariables></OutputVariables>
 <script>set string
SA_telnet_setaddloginpasswd $string</script>
</Template>
