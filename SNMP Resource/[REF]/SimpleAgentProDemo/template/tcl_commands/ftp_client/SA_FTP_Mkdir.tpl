<!DOCTYPE Template>
<Template>
 <Version>1.0</Version>
 <Name>SA_FTP_Mkdir</Name>
 <Contributor>SimpleSoft</Contributor>
 <Language>Tcl</Language>
 <Description>Causes the specified directory to be created on the server site.

Example: SA_FTP_Mkdir ?dir newdir</Description>
 <InputList>
  <Input>
   <label>Directory Name :</label>
   <type>1</type>
   <value>none</value>
   <variable>dir_name</variable>
  </Input>
 </InputList>
 <OutputVariables></OutputVariables>
 <script>set dir_name
SA_FTP_Mkdir -dir $dir_name</script>
</Template>
