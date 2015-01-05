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
using System.Windows.Navigation;
using System.Windows.Shapes;
using QuickGraph;

namespace GUI
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        #region Members


        public uint States { get; set; }
        public uint Alphabet { get; set; }
        public uint StartState { get; set; }
      

        private IBidirectionalGraph<object, IEdge<object>> _graphToVisualize;

        public IBidirectionalGraph<object, IEdge<object>> GraphToVisualize { get { return _graphToVisualize; } }
        #endregion
        public MainWindow()
        {
            InitializeMembers();
            CreateBindings();
            CreateGraphToVisualize();
            InitializeComponent();
        }

        private void CreateBindings()
        {
            Binding StartStateBinding = new Binding("");
        }

        private void InitializeMembers()
        {
            this.States = this.Alphabet = 1;
            this.StartState = 0;
        }
        private void CreateGraphToVisualize()
        {
            var g = new BidirectionalGraph<object, IEdge<object>>();

            string[] vertices = new string[5];
            for (int i = 0; i < 5; i++)
            {
                vertices[i] = i.ToString();

                g.AddVertex(vertices[i]);
            }

            g.AddEdge(new Edge<object>(vertices[0], vertices[1]));
            g.AddEdge(new Edge<object>(vertices[1], vertices[2]));
            g.AddEdge(new Edge<object>(vertices[2], vertices[3]));
            g.AddEdge(new Edge<object>(vertices[3], vertices[1]));
            g.AddEdge(new Edge<object>(vertices[1], vertices[4]));

            _graphToVisualize = g;
        }

        private void BigButton_Click(object sender, RoutedEventArgs e)
        {
            var TransitionFunctionDialog = new TransitionFunctionWindow(5, 7);
            TransitionFunctionDialog.ShowDialog();


        }
    }
}
