using pt9.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace pt9
{
    internal class ManageEmployee
    {
        //Singleton Pattern
        private static ManageEmployee instance = null;

        //tạo ra khóa bảo vệ
        private static readonly object instanceLock = new object();

        private ManageEmployee() { }

        //tạo property có get set
        public static ManageEmployee Instance
        {
            get
            {
                lock (instanceLock)
                {
                    if (instance == null)
                    {
                        instance = new ManageEmployee();
                    }
                    return instance;
                }
            }
        }

        public List<Employee> GetEmployees()
        {
            List<Employee> employees;
            try
            {
                //giống use db trong sql server
                using Prn221TrialContext context = new Prn221TrialContext();
                employees = context.Employees.ToList();
            }
            catch (Exception e)
            {

                throw new Exception(e.Message);
            }
            return employees;
        }

        public void InsertEmployee(Employee employee)
        {
            try
            {
                using Prn221TrialContext context = new Prn221TrialContext();
                context.Employees.Add(employee);
                context.SaveChanges();
            }
            catch (Exception e)
            {

                throw new Exception(e.Message);
            }
        }

        public void UpdateEmployee(Employee employee)
        {
            try
            {
                using Prn221TrialContext context = new Prn221TrialContext();
                context.Entry<Employee>(employee).State = Microsoft.EntityFrameworkCore.EntityState.Modified;
                context.SaveChanges();
            }
            catch (Exception e)
            {

                throw new Exception(e.Message);
            }
        }

        public void DeleteEmployee(Employee employee)
        {
            try
            {
                using Prn221TrialContext context = new Prn221TrialContext();
                var empl = context.Employees.SingleOrDefault(c => c.Id == employee.Id);
                context.Employees.Remove(empl);
                context.SaveChanges();
            }
            catch (Exception e)
            {

                throw new Exception(e.Message);
            }
        }
    }
}
