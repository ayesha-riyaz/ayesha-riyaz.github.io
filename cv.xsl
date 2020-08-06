<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/cv">
   <html>
   <head>
     <title>My CV</title>
     <style>
      *
      {
        box-sizing: border-box;
      }

      .column
      {
          float: right;
          padding: 10px;
          height: 1000px;
      }

      .left
      {
        width: 25%;
      }

      .right
      {
        width: 75%;
      }

      .row:after
      {
        content: "";
        display: table;
        clear: both;
      }
      img
      {
        border-radius: 50%;
        border: 2px solid #ddd;
      }
      .bgmaroon
      {
        background-color: #ffffff;
        color: #680612;
        border:3px solid #680612;
        font-family: "Times New Roman", Times, serif;
      }
      .white
      {
        color: #680612;
        text-align: center;
      }
      .maroon
      {
        color: #680612;
        text-align: left;
        font-size: 22px;
      }
      .text
      {
      color: black;
      text-align: left;
      font-size: 18px;
      }
    </style>
  </head>
  <body>
 <center>
 <!--<h2><center> CURRICULUM VITAE </center></h2>-->
  <div class="row">
    <div class="column left" style="background-color:#c29ba0;">
      
      <div class="bgmaroon" style="font-size: 24px;">
        <center>
        <strong><xsl:value-of select="info/firstname" />
        <xsl:value-of select="info/lastname" /></strong><br/>
      </center>
      </div>

      <div class="white">
        <br/><b style="text-decoration: underline;">ADDRESS</b><br/>
          <xsl:value-of select="contact/address" /><br/><br/>
        <b style="text-decoration: underline;">CONTACT</b><br/>
          <xsl:value-of select="contact/email" /><br/>
          <xsl:value-of select="contact/phone" /><br/><br/>
        <b style="text-decoration: underline;">WEBSITE</b><br/><br/>
          <xsl:value-of select="contact/website" /><br/>
         <xsl:value-of select="contact/website1" /><br/><br/>
      </div>

      <div class="bgmaroon" style="text-align:center;"><b>LANGUAGES</b></div><br/>
      <div class="white" style="text-align: center;">
        <ul>
        <li><xsl:value-of select="languages/one" /><i> - Full proficiency</i></li><br/>
        <li><xsl:value-of select="languages/two" /><i> - Elementary proficiency</i></li><br/>
        <li><xsl:value-of select="languages/three" /><i> - Native proficiency</i></li><br/><br/>
      </ul>
      </div>

      <div class="bgmaroon" style="text-align: center;"><b>SKILLS</b></div><br/>
      <div class="white" style="text-align: left;">
        <ul>
         <li><xsl:value-of select="skills/one" /></li><br/>
         <li><xsl:value-of select="skills/two" /></li><br/>
         <li><xsl:value-of select="skills/three" /></li><br/>
       </ul>
      </div>

      <div class="bgmaroon" style="text-align: left;"><b>REFERENCES</b></div><br/>
      <div class="white">
       <xsl:for-each select="references/person">
        <xsl:value-of select="name" /><br/>
        <xsl:value-of select="phone" /><br/>
        <xsl:value-of select="email" /><br/><br/>
      </xsl:for-each>
      </div>

    </div>

      <div class="column right" style="background-color:#efe6e7;">
        <div class="maroon"><b>OBJECTIVE</b></div><hr/><br/>
         <div class="text">
           <xsl:value-of select="about-me" /><br/><br/>
         </div>

       <div class="maroon"><b>EDUCATION</b></div><hr/><br/>
         <div class="text">
           <xsl:for-each select="education/course">
             <xsl:value-of select="year" /><br/>
             <b><xsl:value-of select="institutename" /></b><br/>
             <i><xsl:value-of select="coursename" /></i><br/>
             <xsl:value-of select="description" /><br/><br/>
           </xsl:for-each>
         </div>

       <div class="maroon"><b>EXPERIENCE</b></div><hr/><br/>
       <div class="text">
         <xsl:for-each select="experience/job">
           <xsl:value-of select="year" /><br/>
           <b><xsl:value-of select="title" /></b><br/>
           <i><xsl:value-of select="position" /></i><br/>
           <xsl:value-of select="description" /><br/><br/>
         </xsl:for-each>
       </div>
      </div>
    </div>
</center>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
