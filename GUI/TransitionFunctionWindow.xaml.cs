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
        private uint states;
        private uint[,] transitionFunction;
        



        public TransitionFunctionWindow(int states, int alphabet)
        {
            this.transitionFunction = new uint[states, alphabet];
            InitializeComponent();

            dataGrid2D.DataContext = this;
            dataGrid2D.ItemsSource2D = transitionFunction;


        }

        public uint[,] GetTransitionFunction()
        {
            return transitionFunction;
        }

        private void GenerujButton_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }


    }
}
