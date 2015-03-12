﻿using System;
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

namespace AdminTools
{
    /// <summary>
    /// Interaction logic for win_AdminMenu.xaml
    /// </summary>
    public partial class AdminMenu : Window {
        public AdminMenu() {
            InitializeComponent();
        }//end win_AdminMenu

        private void btn_EditOrDeleteParent_Click(object sender, RoutedEventArgs e) {
            bool editParent = true; 
            ParentLogin ParentLogin = new ParentLogin(editParent);
            ParentLogin.Show();
            this.Close();
        }

        private void btn_Logout_Click(object sender, RoutedEventArgs e) {
            MainWindow loginWindow = new MainWindow();
            loginWindow.Show();
            this.Close();
        }

        private void btn_ParentReport_Click(object sender, RoutedEventArgs e) {
            ParentReport parentReportWin = new ParentReport();
            parentReportWin.Show();
        }

        private void btn_BusinessReport_Click(object sender, RoutedEventArgs e) {
            BusinessReport businessReportWin = new BusinessReport();
            businessReportWin.Show();
        }

        private void btn_EditOrDeleteChild_Click(object sender, RoutedEventArgs e) {
            bool editParent = false; 
            ParentLogin ParentLogin = new ParentLogin(editParent);
            ParentLogin.Show();
            this.Close();
        }

        private void btn_EditAddEvents_Click(object sender, RoutedEventArgs e) {
            EditEvents editEvents = new EditEvents();
            editEvents.Show();
        }

        private void btn_AddNewParent_Click(object sender, RoutedEventArgs e)
        {
            NewParentLogin newParentLogin = new NewParentLogin();
            newParentLogin.ShowDialog();
        }
    }//end class
}//end namespace