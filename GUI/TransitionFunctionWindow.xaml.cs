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
using DataGrid2DLibrary;

namespace GUI
{
    /// <summary>
    /// Interaction logic for TransitionFunctionWindow.xaml
    /// </summary>
    public partial class TransitionFunctionWindow : Window
    {
        private uint[,] transitionFunction;
        private bool[] acceptStates;



        public TransitionFunctionWindow(uint states, uint alphabet)
        {
            this.transitionFunction = new uint[states, alphabet];
            this.acceptStates = new bool[states];
            InitializeComponent();
            dataGrid2D.DataContext = this;
            dataGrid2D.ItemsSource2D = transitionFunction;
            dataGrid2DAcceptStates.DataContext = this;
            dataGrid2DAcceptStates.ItemsSource2D = acceptStates;
        }

        public uint[,] GetTransitionFunction()
        {
            return transitionFunction;
        }

        public bool[] GetAcceptStates()
        {
            return acceptStates;
        }

        private void EnterAcceptStatesButton_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }


    }
}
