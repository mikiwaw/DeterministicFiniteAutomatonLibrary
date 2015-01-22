using GraphX;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GUI
{
    public class DataVertex : VertexBase
    {
        public string Text { get; set; }

        

        public override string ToString()
        {
            return Text;
        }

       

  
        public DataVertex()
            : this("")
        {
        }

        public DataVertex(string text = "")
        {
            Text = text;
        }
    }
}
