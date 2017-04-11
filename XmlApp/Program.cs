using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Xsl;

namespace XmlApp
{
    class Program
    {
        static void Main(string[] args)
        {
            var xslt = new XslCompiledTransform(true);

            xslt.Load("lyricsTemplate.xsl");

            xslt.Transform("lyrics.xml", "output.xml");
        }
    }
}
