?xml version="1.0" encoding="UTF-8"?>
<!--****************************************************************************
* Build Intellisense Documentation XML File from Doxygen Output.
*****************************************************************************-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="xml" version="1.0" indent="yes" standalone="yes" encoding="UTF-8"/>
  <xsl:param name="assemblyName" select="assemblyName"/>
  
  <xsl:template match="/">
    <doc xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
      <assembly>
          <name><xsl:value-of select="$assemblyName"/></name>
      </assembly>
      <members>
        <!--===============================================================-->
        <!-- Sort class/interface definitions by file path and class name. -->
        <!--===============================================================-->
        <xsl:for-each select="doxygen/compounddef">
          <xsl:sort select="location/@file"/>
          <xsl:sort select="compoundname"/>
          
          <!--====================================================-->
          <!-- Build 'T:' (Type) definition for class/interface. -->
          <!-- Convert `compoundname` (ns::ns::name) to           -->
          <!-- fully-qualified `$classname` (ns.ns.name).         -->
          <!--====================================================-->
          <xsl:if test="@kind='class' or @kind='interface'">
            <xsl:variable name="classname" select="translate(normalize-space(translate(compoundname,':',' ')),' ','.')"/>
            <xsl:call-template name="MakeMember">
              <xsl:with-param name="type" select="'T'"/>
              <xsl:with-param name="name" select="$classname" />
            </xsl:call-template>
            
            <!--============================================================================-->
            <!-- Build definitions for class/interface members. Doxygen may include        -->
            <!-- `memberdef` nodes for inherited members and Intellisense only wants one    -->
            <!-- definition. Filter any members that do not belong to this class/interface. -->
            <!--============================================================================-->
            <xsl:for-each select="sectiondef/memberdef[qualifiedname=concat($classname, '.', name)]">
              <xsl:choose>
                <xsl:when test="@kind='enum'">
                  <xsl:call-template name="MakeMember">
                    <xsl:with-param name="type" select="'T'"/>
                  </xsl:call-template>
                </xsl:when>
                <xsl:when test="@kind='property'">
                  <xsl:call-template name="MakeMember">
                    <xsl:with-param name="type" select="'P'"/>
                  </xsl:call-template>
                </xsl:when>
                <xsl:when test="@kind='variable'">
                  <xsl:call-template name="MakeMember">
                    <xsl:with-param name="type" select="'F'"/>
                  </xsl:call-template>
                </xsl:when>
                
                <!--=======================================================================-->
                <!-- Constructor member functions are named `#ctor` in Intellisense.       -->
                <!-- Change the member name for constructors else use the `qualifiedname`. -->
                <!--=======================================================================-->
                <xsl:when test="@kind='function'">
                  <xsl:call-template name="MakeMember">
                    <xsl:with-param name="type" select="'M'"/>
                    <xsl:with-param name="name">
                      <xsl:choose>
                        <xsl:when test="name = substring($classname, string-length($classname)-string-length(name)+1)">
                          <xsl:value-of select="concat($classname,'.#ctor')"/>
                        </xsl:when>
                        <xsl:otherwise>
                          <xsl:value-of select="qualifiedname"/>
                        </xsl:otherwise>
                      </xsl:choose>
                    </xsl:with-param>
                  </xsl:call-template>
                </xsl:when>
              </xsl:choose>
            </xsl:for-each>
          </xsl:if>
        </xsl:for-each>
      </members>
    </doc>
  </xsl:template>
  
  <!--=========================================-->
  <!-- Nodes to copy and rename, if necessary. -->
  <!--=========================================-->
  <xsl:template match="del">           <xsl:call-template name="copy-node"/></xsl:template>
  <xsl:template match="ins">           <xsl:call-template name="copy-node"/></xsl:template>
  <xsl:template match="para">          <xsl:call-template name="copy-node"/></xsl:template>
  <xsl:template match="small">         <xsl:call-template name="copy-node"/></xsl:template>
  <xsl:template match="bold">          <xsl:call-template name="copy-node"><xsl:with-param name="tag" select="'b'"/></xsl:call-template></xsl:template>
  <xsl:template match="emphasis">      <xsl:call-template name="copy-node"><xsl:with-param name="tag" select="'i'"/></xsl:call-template></xsl:template>
  <xsl:template match="underline">     <xsl:call-template name="copy-node"><xsl:with-param name="tag" select="'u'"/></xsl:call-template></xsl:template>
  <xsl:template match="subscript">     <xsl:call-template name="copy-node"><xsl:with-param name="tag" select="'sub'"/></xsl:call-template></xsl:template>
  <xsl:template match="superscript">   <xsl:call-template name="copy-node"><xsl:with-param name="tag" select="'sup'"/></xsl:call-template></xsl:template>
  <xsl:template match="computeroutput"><xsl:call-template name="copy-node"><xsl:with-param name="tag" select="'c'"/></xsl:call-template></xsl:template>
  <xsl:template match="ulink">         <xsl:call-template name="copy-node"><xsl:with-param name="tag" select="'a'"/></xsl:call-template></xsl:template>
  
  <xsl:template match="preformatted">
    <code><xsl:value-of select="." /></code>
  </xsl:template>
  
  <!--====================================================================-->
  <!-- MakeMember - Builds the member definition from Doxygen `memberdef` -->
  <!-- node. `type` is member type identifier and `name` is member name   -->
  <!-- and defaults to `qualifiedname`. Member ID is `<type>:<name>`.     -->
  <!--====================================================================-->
  <xsl:template name="MakeMember">
    <xsl:param name="type"/>
    <xsl:param name="name" select="qualifiedname"/>
    
    <!--===============================================-->
    <!-- Build member definition only if there is one. -->
    <!--===============================================-->
    <xsl:if test="briefdescription != '' or detaileddescription != ''">
      <member>
        <xsl:attribute name="name">
          <xsl:value-of select="$type"/>:<xsl:value-of select="$name"/><xsl:value-of select="argsstring"/>
        </xsl:attribute>
        
        <!--=================================================================-->
        <!-- Include summary only if there is any description of the member. -->
        <!--                                                                 -->
        <!-- Note: This selection of `detaileddescription` will grab any     -->
        <!-- text nodes before `parameterlist` but will exclude following    -->
        <!-- text nodes. There should be none, anyway.                       -->
        <!--=================================================================-->
        <xsl:variable name="detailed" select="detaileddescription/node()[not(self::para/parameterlist)]"/>
        <xsl:if test="briefdescription != '' or $detailed != ''">
          <summary>
            <xsl:apply-templates select="briefdescription"/>
            <xsl:apply-templates select="detaileddescription/node()[not(self::para/parameterlist)]"/> 
          </summary>
        </xsl:if>
        
        <!--=======================================-->
        <!-- Build list of parameters and returns. -->
        <!--=======================================-->
        <xsl:for-each select="detaileddescription/para/parameterlist[@kind='param']/parameteritem">
          <param><xsl:attribute name="name"><xsl:value-of select="parameternamelist[1]/parametername"/></xsl:attribute>
            <xsl:apply-templates select="parameterdescription/para"/>
          </param>
        </xsl:for-each>
        <xsl:for-each select="detaileddescription/para/simplesect[@kind='return']">
          <return><xsl:apply-templates select="node()"/></return>
        </xsl:for-each>
      </member>
    </xsl:if>
  </xsl:template>
  
  <!--================================================-->
  <!-- copy-node - Simple copy of nodes that come     -->
  <!-- over as is or must be renamed. `tag` is target -->
  <!-- node name and defaults to `local-name()`.      -->
  <!--================================================-->
  <xsl:template name="copy-node">
    <xsl:param name="tag" select="local-name()"/>
    <xsl:element name="{$tag}">
      <xsl:copy-of select="@*"/>
      <xsl:apply-templates select="node()" />
    </xsl:element>
  </xsl:template>
  
</xsl:stylesheet>
Doxygen XML Output
This stylesheet expects input of a single file so first all the XML files must be combined. Given XML folder tree in docs folder (default), here is how to combine all the files in the folder tree using SaxonJS:

xslt3 -s:docs\input.xml -xsl:docs\combine.xslt -o:combined.xml
combined.xml file is tree-structured with class/interface definitions containing member definitions.

<doxygen>
  <compounddef kind="<class/interface>">
    <compoundname>ns::ns::classname</compoundname>
    <location file="<relativeFilePath>"/>
    <sectiondef>
      <memberdef kind="<enum/function/property/variable>">
        <name>memberName</name>
        <qualifiedname>ns.ns.className.memberName</qualifiedname>
        <briefdescription>
          <para>
            Brief description generally up to the first period (.)
            from the code comments.
          </para>
        <detaileddescription>
          <para>
            A more detailed description.</para>
          <para>
            <parameterlist kind="param">
              <parameteritem>
                <parameternamelist>
                  <parametername>paramName</parametername>
                </parameternamelist>
                <parameterdescription>
                  <para>
                    A brief description of the parameter.
                  </para>
                </parameterdescription>
              </parameteritem>
            </parameterlist>
            <simplesect kind="return">
              <para>
                Description of the return value.
              </para>
            </simplesect>
          </para>
        </detaileddescription>
      </memberdef>
      <memberdef/>
      ...
    </sectiondef>
  </compounddef>
  <compounddef>
  ...
<doxygen>