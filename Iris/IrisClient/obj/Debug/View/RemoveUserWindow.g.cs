﻿#pragma checksum "..\..\..\View\RemoveUserWindow.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "10938079968D85B86A01D092DAD62EB96B2EC36D17EECAB7F8CBFBA2A064AFAF"
//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан программой.
//     Исполняемая версия:4.0.30319.42000
//
//     Изменения в этом файле могут привести к неправильной работе и будут потеряны в случае
//     повторной генерации кода.
// </auto-generated>
//------------------------------------------------------------------------------

using IrisClient;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace IrisClient {
    
    
    /// <summary>
    /// RemoveUserWindow
    /// </summary>
    public partial class RemoveUserWindow : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 60 "..\..\..\View\RemoveUserWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox tbID;
        
        #line default
        #line hidden
        
        
        #line 61 "..\..\..\View\RemoveUserWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button dRemove;
        
        #line default
        #line hidden
        
        
        #line 62 "..\..\..\View\RemoveUserWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label lableNotAnInteger;
        
        #line default
        #line hidden
        
        
        #line 63 "..\..\..\View\RemoveUserWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label lableNonexistingUser;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/IrisClient;component/view/removeuserwindow.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\View\RemoveUserWindow.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            
            #line 8 "..\..\..\View\RemoveUserWindow.xaml"
            ((IrisClient.RemoveUserWindow)(target)).Closing += new System.ComponentModel.CancelEventHandler(this.WindowClosing);
            
            #line default
            #line hidden
            return;
            case 2:
            this.tbID = ((System.Windows.Controls.TextBox)(target));
            
            #line 60 "..\..\..\View\RemoveUserWindow.xaml"
            this.tbID.PreviewMouseDown += new System.Windows.Input.MouseButtonEventHandler(this.RemoveTextID);
            
            #line default
            #line hidden
            return;
            case 3:
            this.dRemove = ((System.Windows.Controls.Button)(target));
            
            #line 61 "..\..\..\View\RemoveUserWindow.xaml"
            this.dRemove.Click += new System.Windows.RoutedEventHandler(this.ButtonClickRemoveUserFromChat);
            
            #line default
            #line hidden
            return;
            case 4:
            this.lableNotAnInteger = ((System.Windows.Controls.Label)(target));
            return;
            case 5:
            this.lableNonexistingUser = ((System.Windows.Controls.Label)(target));
            return;
            case 6:
            
            #line 64 "..\..\..\View\RemoveUserWindow.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.ButtonClickBack);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

