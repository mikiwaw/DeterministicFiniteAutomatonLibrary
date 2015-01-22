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
using DeterministicFiniteAutomatonLibrary;

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

        

        #endregion
        public MainWindow()
        {
            InitializeMembers();
            //CreateBindings();
            InitializeComponent();
        }

        //private void CreateBindings()
        //{
        //    Binding StartStateBinding = new Binding("");
        //}

        private void InitializeMembers()
        {
            this.States = this.Alphabet = 1;
            this.StartState = 0;
        }
      

        private void BigButton_Click(object sender, RoutedEventArgs e)
        {
            var TransitionFunctionDialog = new TransitionFunctionWindow(States, Alphabet);
            TransitionFunctionDialog.ShowDialog();
            var graphWindow = new GraphWindow(new DeterministicFiniteAutomaton(States, Alphabet, StartState, TransitionFunctionDialog.GetTransitionFunction(), TransitionFunctionDialog.GetAcceptStates()));
            graphWindow.Show();


            //((Button)sender).Content = TransitionFunctionDialog.GetAcceptStates()[0];


        }
    }
}
