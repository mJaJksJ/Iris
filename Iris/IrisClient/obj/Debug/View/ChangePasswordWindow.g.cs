﻿#pragma checksum "..\..\..\View\ChangePasswordWindow.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "DD7C8FC887A6019B6D5C2E23D69D4F6F0B9B1CCC4291B179C69A0A0ECE028BBE"
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
    /// ChangePasswordWindow
    /// </summary>
    public partial class ChangePasswordWindow : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 61 "..\..\..\View\ChangePasswordWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label lableChangePassword;
        
        #line default
        #line hidden
        
        
        #line 62 "..\..\..\View\ChangePasswordWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox tbOldPassword;
        
        #line default
        #line hidden
        
        
        #line 64 "..\..\..\View\ChangePasswordWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox tbNewPassword;
        
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
            System.Uri resourceLocater = new System.Uri("/IrisClient;component/view/changepasswordwindow.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\View\ChangePasswordWindow.xaml"
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
            
            #line 8 "..\..\..\View\ChangePasswordWindow.xaml"
            ((IrisClient.ChangePasswordWindow)(target)).Closing += new System.ComponentModel.CancelEventHandler(this.WindowClosing);
            
            #line default
            #line hidden
            return;
            case 2:
            this.lableChangePassword = ((System.Windows.Controls.Label)(target));
            return;
            case 3:
            this.tbOldPassword = ((System.Windows.Controls.TextBox)(target));
            
            #line 62 "..\..\..\View\ChangePasswordWindow.xaml"
            this.tbOldPassword.PreviewMouseDown += new System.Windows.Input.MouseButtonEventHandler(this.RemoveTextOldPassword);
            
            #line default
            #line hidden
            return;
            case 4:
            
            #line 63 "..\..\..\View\ChangePasswordWindow.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.ButtonClickChangePassword);
            
            #line default
            #line hidden
            return;
            case 5:
            this.tbNewPassword = ((System.Windows.Controls.TextBox)(target));
            
            #line 64 "..\..\..\View\ChangePasswordWindow.xaml"
            this.tbNewPassword.PreviewMouseDown += new System.Windows.Input.MouseButtonEventHandler(this.RemoveTextNewPassword);
            
            #line default
            #line hidden
            return;
            case 6:
            
            #line 66 "..\..\..\View\ChangePasswordWindow.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.ButtonClickBack);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

