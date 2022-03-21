using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.IO;

namespace Licensing
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string pubFName;
            string prFName;

            pubFName = @"D:\Sandhi\License\INCLIC\LicenseINI\pubKey.snk";
            prFName = @"D:\Sandhi\License\INCLIC\LicenseINI\prKey.snk";

            //Crypto.Keys(pubFName, prFName);
            Crypto.Encrypt(pubFName, @"D:\Sandhi\License\INCLIC\LicenseINI\LIC.txt", @"D:\Sandhi\License\INCLIC\CreateLIC\EDMSLIC.ini");
            //string dec =  Crypto.Decrypt(prFName, "D:/EDMSLIC.ini");
        }
    }
}