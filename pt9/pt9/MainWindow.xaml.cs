using pt9.Models;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace pt9
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        Prn221TrialContext context = new Prn221TrialContext();
        public MainWindow()
        {
            InitializeComponent();
            ShowEmployees();
        }

        private void ShowEmployees() =>
            lvEmployee.ItemsSource = ManageEmployee.Instance.GetEmployees();

        private void btnRefresh_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btnAdd_Click(object sender, RoutedEventArgs e)
        {
            var employee = new Employee
            {
                Name = txtEmployeeName.Text,
                Gender = txtEmployeeDob.Text,
                Dob = DateOnly.Parse(txtEmployeeDob.Text),
                Phone = txtEmployeePhone.Text,
                Idnumber = txtEmployeeIDNumber.Text
            };
            ManageEmployee.Instance.InsertEmployee(employee);
            ShowEmployees();
        }

        private void btnEdit_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btnDelete_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}