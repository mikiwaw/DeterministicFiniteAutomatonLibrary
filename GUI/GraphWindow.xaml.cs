using DeterministicFiniteAutomatonLibrary;
using GraphX;
using GraphX.GraphSharp.Algorithms.Layout.Simple.FDP;
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
    /// Interaction logic for GraphWindow.xaml
    /// </summary>
    public partial class GraphWindow : Window
    {
        public GraphWindow(DeterministicFiniteAutomaton dfa)
        {
            InitializeComponent();

            zoomctrl.ZoomToFill();

            MyGraphArea_Setup(dfa);
        }

        private void MyGraphArea_Setup(DeterministicFiniteAutomaton dfa)
        {
            var logicCore = new MyGXLogicCore() { Graph = MyGraph_Setup(dfa) };

            logicCore.DefaultLayoutAlgorithm = LayoutAlgorithmTypeEnum.KK;

            logicCore.DefaultLayoutAlgorithmParams = logicCore.AlgorithmFactory.CreateLayoutParameters(LayoutAlgorithmTypeEnum.KK);

            ((KKLayoutParameters)logicCore.DefaultLayoutAlgorithmParams).MaxIterations = (int)(dfa.States * dfa.States);

            logicCore.DefaultOverlapRemovalAlgorithm = OverlapRemovalAlgorithmTypeEnum.FSA;

            logicCore.DefaultOverlapRemovalAlgorithmParams.HorizontalGap = 50;
            logicCore.DefaultOverlapRemovalAlgorithmParams.VerticalGap = 50;

            logicCore.DefaultEdgeRoutingAlgorithm = EdgeRoutingAlgorithmTypeEnum.SimpleER;

            logicCore.AsyncAlgorithmCompute = false;

            Area.LogicCore = logicCore;

        }

        private MyGraph MyGraph_Setup(DeterministicFiniteAutomaton dfa)
        {
            var dataGraph = new MyGraph();

            for (uint i = 0; i < dfa.States; i++)
            {
                var dataVertex = new DataVertex("q" + i.ToString()) { ID = i };
                dataGraph.AddVertex(dataVertex);
            }

            var vlist = dataGraph.Vertices.ToList();

            for (uint i = 0; i < dfa.States; i++)
			    for (uint j = 0; j < dfa.Alphabet; j++)
			{
                var dataEdge = new DataEdge(vlist[(int)i], vlist[(int)dfa.GetNextState(i, j)]) { Text = j.ToString() };   
			}

            return dataGraph;
        }


    }
}
