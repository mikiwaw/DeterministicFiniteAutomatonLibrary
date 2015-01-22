﻿using Windows.UI.Xaml.Input;
using GraphX.Controls;

namespace GraphX.Models
{
    public sealed class VertexMovedEventArgs : System.EventArgs
    {
        public VertexControl VertexControl { get; private set; }
        public PointerRoutedEventArgs Args { get; private set; }

        public VertexMovedEventArgs(VertexControl vc, PointerRoutedEventArgs e)
            : base()
        {
            Args = e;
            VertexControl = vc;
        }
    }
}
