<!DOCTYPE Template>
<Template>
 <Version>1.0</Version>
 <Name>SA_setmywritecommunity</Name>
 <Contributor>SimpleSoft</Contributor>
 <Language>Tcl</Language>
 <Description>Sets the write community string  of the current device.

Example: SA_setmywritecommunity  super_private</Description>
 <InputList>
  <Input>
   <label>Community String :</label>
   <type>0</type>
   <value>0</value>
   <variable>new_community</variable>
   <combomap>
    <mapitem>
     <displayval>private</displayval>
     <actualval>0</actualval>
    </mapitem>
    <mapitem>
     <displayval>public</displayval>
     <actualval>1</actualval>
    </mapitem>
   </combomap>
  </Input>
 </InputList>
 <OutputVariables></OutputVariables>
 <script>set new_community
SA_setmywritecommunity $new_community</script>
</Template>
