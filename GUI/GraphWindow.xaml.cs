using DeterministicFiniteAutomatonLibrary;
using QuickGraph;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace GUI
{
    /// <summary>
    /// Interaction logic for Window1.xaml
    /// </summary>
    public partial class GraphWindow : Window
    {
        public GraphWindow(DeterministicFiniteAutomaton dfa)
        {
            CreateGraphToVisualize(dfa);

            InitializeComponent();
        }

        private IBidirectionalGraph<object, IEdge<object>> _graphToVisualize;
        public IBidirectionalGraph<object, IEdge<object>> GraphToVisualize { get { return _graphToVisualize; } }

        private void CreateGraphToVisualize(DeterministicFiniteAutomaton dfa)
        {
            var g = new BidirectionalGraph<object, IEdge<object>>();

            //string[] vertices = new string[dfa.States];
            for (uint i = 0; i < dfa.States; i++)
            {
                //vertices[i] = i.ToString();

                g.AddVertex(i.ToString());
            }

            for (uint i = 0; i < dfa.States; i++)
                for (uint j = 0; j < dfa.Alphabet; j++)
                {
                   // g.AddEdge(new Edge<object>(vertices[i], vertices[dfa.GetNextState(i, j)]));
                    g.AddEdge(new Edge<object>(i.ToString(), dfa.GetNextState(i, j).ToString()));
                }

            _graphToVisualize = g;
        }




    }
}
