﻿using System.Diagnostics;
using System.Linq;
using Windows.Foundation;
using Windows.UI.Xaml;
using Windows.UI.Xaml.Controls;
using Windows.UI.Xaml.Data;
using Windows.UI.Xaml.Media;

namespace GraphX.Controls
{
    [Bindable]
    public class VertexLabelControl : ContentControl
    {

        #region Properties
        internal Rect LastKnownRectSize;


       public static readonly DependencyProperty AngleProperty = DependencyProperty.Register("Angle",
                                                                                       typeof(double),
                                                                                       typeof(VertexLabelControl),
                                                                                       new PropertyMetadata(0.0, AngleChanged));

        private static void AngleChanged(DependencyObject d, DependencyPropertyChangedEventArgs e)
        {
            var ctrl = d as UIElement;
            if (ctrl == null)
            {
                Debug.WriteLine("VertexLabelControl -> dp isn't uielement!");
                return;
            }
            var tg = ctrl.RenderTransform as TransformGroup;
            if (tg == null ) ctrl.RenderTransform = new RotateTransform {Angle = (double) e.NewValue, CenterX = .5, CenterY = .5};
            else
            {
                var rt = tg.Children.FirstOrDefault(a => a is RotateTransform);
                if (rt == null)
                    tg.Children.Add(new RotateTransform {Angle = (double) e.NewValue, CenterX = .5, CenterY = .5});
                else (rt as RotateTransform).Angle = (double) e.NewValue;
            }
        }

        /// <summary>
        /// Gets or sets label drawing angle in degrees
        /// </summary>
        public double Angle
        {
            get { return (double)GetValue(AngleProperty); }
            set { SetValue(AngleProperty, value); }
        }

        public static readonly DependencyProperty LabelPositionProperty = DependencyProperty.Register("LabelPosition",
                                                                typeof(Point),
                                                                typeof(VertexLabelControl),
                                                                new PropertyMetadata(new Point()));
        /// <summary>
        /// Gets or sets label position if LabelPositionMode is set to Coordinates
        /// Position is always measured from top left VERTEX corner.
        /// </summary>
        public Point LabelPosition
        {
            get { return (Point)GetValue(LabelPositionProperty); }
            set { SetValue(LabelPositionProperty, value); }
        }

        public static readonly DependencyProperty LabelPositionModeProperty = DependencyProperty.Register("LabelPositionMode",
                                                                        typeof(VertexLabelPositionMode),
                                                                        typeof(VertexLabelControl),
                                                                        new PropertyMetadata(VertexLabelPositionMode.Sides));
        /// <summary>
        /// Gets or set label positioning mode
        /// </summary>
        public VertexLabelPositionMode LabelPositionMode
        {
            get { return (VertexLabelPositionMode)GetValue(LabelPositionModeProperty); }
            set { SetValue(LabelPositionModeProperty, value); }
        }


        public static readonly DependencyProperty LabelPositionSideProperty = DependencyProperty.Register("LabelPositionSide",
                                                                                typeof(VertexLabelPositionSide),
                                                                                typeof(VertexLabelControl),
                                                                                new PropertyMetadata(VertexLabelPositionSide.BottomRight));
        /// <summary>
        /// Gets or sets label position side if LabelPositionMode is set to Sides
        /// </summary>
        public VertexLabelPositionSide LabelPositionSide 
        {
            get { return (VertexLabelPositionSide)GetValue(LabelPositionSideProperty); }
            set { SetValue(LabelPositionSideProperty, value); }
        }
        #endregion

        public VertexLabelControl()
        {
            DefaultStyleKey = typeof(VertexLabelControl);
            if (Windows.ApplicationModel.DesignMode.DesignModeEnabled) return;

            LayoutUpdated += VertexLabelControl_LayoutUpdated;
            HorizontalAlignment = HorizontalAlignment.Left;
            VerticalAlignment = VerticalAlignment.Top;
        }

        void VertexLabelControl_LayoutUpdated(object sender, object e)
        {
            var vc = GetVertexControl(Parent);
            if(vc == null || !vc.ShowLabel) return;
            UpdatePosition();
        }

        private static VertexControl GetVertexControl(DependencyObject parent)
        {
            while (parent != null)
            {
                var control = parent as VertexControl;
                if (control != null) return control;
                parent = VisualTreeHelper.GetParent(parent);
            }
            return null;
        }


        internal void UpdatePosition()
        {
            if (double.IsNaN(DesiredSize.Width) || DesiredSize.Width == 0) return;

            var vc = GetVertexControl(Parent);
            if (vc == null) return;

            if (LabelPositionMode == VertexLabelPositionMode.Sides)
            {
                Point pt;
                switch (LabelPositionSide)
                {
                    case VertexLabelPositionSide.TopRight:
                        pt = new Point(vc.DesiredSize.Width, -DesiredSize.Height);
                        break;
                    case VertexLabelPositionSide.BottomRight:
                        pt = new Point(vc.DesiredSize.Width, vc.DesiredSize.Height);
                        break;
                    case VertexLabelPositionSide.TopLeft:
                        pt = new Point(-DesiredSize.Width, -DesiredSize.Height);
                        break;
                    case VertexLabelPositionSide.BottomLeft:
                        pt = new Point(-DesiredSize.Width, vc.DesiredSize.Height);
                        break;
                    case VertexLabelPositionSide.Top:
                        pt = new Point(vc.DesiredSize.Width *.5 - DesiredSize.Width *.5, -DesiredSize.Height);
                        break;
                    case VertexLabelPositionSide.Bottom:
                        pt = new Point(vc.DesiredSize.Width * .5 - DesiredSize.Width * .5, vc.DesiredSize.Height);
                        break;
                    case VertexLabelPositionSide.Left:
                        pt = new Point(-DesiredSize.Width, vc.DesiredSize.Height * .5f - DesiredSize.Height * .5);
                        break;
                    case VertexLabelPositionSide.Right:
                        pt = new Point(vc.DesiredSize.Width, vc.DesiredSize.Height * .5f - DesiredSize.Height * .5);
                        break;
                    default:
                        throw new GX_InvalidDataException("UpdatePosition() -> Unknown vertex label side!");
                }
                LastKnownRectSize = new Rect(pt, DesiredSize);
            } 
            else LastKnownRectSize = new Rect(LabelPosition, DesiredSize);

            Arrange(LastKnownRectSize);
        }


    }

    /// <summary>
    /// Contains different position modes for vertices
    /// </summary>
    public enum VertexLabelPositionMode
    {
        /// <summary>
        /// Vertex label is positioned on one of the sides
        /// </summary>
        Sides,
        /// <summary>
        /// Vertex label is positioned using custom coordinates
        /// </summary>
        Coordinates
    }

    public enum VertexLabelPositionSide
    {
        TopLeft,
        TopRight,
        BottomLeft,
        BottomRight,
        Top, Right, Bottom, Left
    }
}
