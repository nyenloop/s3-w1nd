<!DOCTYPE Template>
<Template>
 <Version>1.0</Version>
 <Name>SA_telnet_setloginerror</Name>
 <Contributor>SimpleSoft</Contributor>
 <Language>Tcl</Language>
 <Description>Sets the login error message string used by the telnet server. By default it is set to the string &quot;Login incorrect&lt;cr>&lt;lf>&quot;

This command is supported only in the telnet tcl interpretor.

Note:
   The Telenet Server Tcl commands are retained for backwards compatibility with earlier versions.  During the device definition, if you enable Telnet/CLI capability and specify the telnet modeling file and port number, then you do not need to specifiy the SA_start_telnet&quot; Tcl commands in the %init_action section of the device modeling file.  These commands will be automatically carried out for you.
</Description>
 <InputList>
  <Input>
   <label>Error String</label>
   <type>1</type>
   <value>Login incorrect</value>
   <variable>string</variable>
  </Input>
 </InputList>
 <OutputVariables></OutputVariables>
 <script>set string
SA_telnet_setloginerror $string</script>
</Template>
