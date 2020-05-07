// TODO: Write code to define and export the Employee class
//declaring mysql variable and to use mysql
var mysql = require("mysql");
const Index = require("./index");
const prompts = require('prompts');

//declaring connection settings to mysql server
var connection = mysql.createConnection({
    host: "localhost",
  
    // Your port; if not 3306
    port: 3306,
  
    // Your username
    user: "root",
  
    // Your password
    password: "securepassword",
    // the database
    database: "companydb"
  });
  let firstlastname = [
    {
      type: 'text',
      name: 'firstname',
      message: 'What is your first name?'
    },
    {
      type: 'text',
      name: 'lastname',
      message: 'What is your last name?'
    },
  ]
  //defining class
class Employee{
    //defining constructor and variables
    constructor (AllEmployeeName,AllEmployeeDepartment,AllEmployeeByManager,AddEmployee,
        RemoveEmployee,UpdateEmployeeRole,UpdateEmployeeManager)
    {
        this.AllEmployeeName = AllEmployeeName
        this.AllEmployeeDepartment = AllEmployeeDepartment
        this.AllEmployeeByManager = AllEmployeeByManager
        this.AddEmployee = AddEmployee
        this.RemoveEmployee = RemoveEmployee
        this.UpdateEmployeeRole = UpdateEmployeeRole
        this.UpdateEmployeeManager = UpdateEmployeeManager
    }
     

    //defining method to get all employee names
    getAllEmployeeName(){
        
        //return this.name
        //mysql command
        connection.query("select first_name & last_name from employee", function(err, res) {
            if (err) throw err;
        
            // Log all results of the SELECT statement
            console.log(res);
            connection.end();
    //        initialquestions()
        });
    }
    ////defining method to get all employees by department
    getAllEmployeeDepartment(){
        connection.query("SELECT * FROM employees", function(err, res) {
            if (err) throw err;
        
            // Log all results of the SELECT statement
            console.log(res);
            connection.end();
          });
    }
    //defining method to get all employees by department
        getAllEmployeeByManager(){
            connection.query("SELECT * FROM employees", function(err, res) {
                if (err) throw err;
            
                // Log all results of the SELECT statement
                console.log(res);
                connection.end();
              });
        }

        //defining method to add employees
        getAddEmployee(){
            //connection.query("INSERT INTO employee(first_name,last_name) VALUES(? , ?);", function(err, res) {
                (async () => {
                    const firstandlast = await prompts(firstlastname);    
        
            
            //if (err) throw err;
            console.log(firstandlast.firstname);
            console.log(firstandlast.lastname);
        })();
            connection.query("select first_name & last_name from employee", function(err, res) {
            // Log all results of the SELECT statement
              console.log(res);
                connection.end();
              });
                
            }

        //defining method to remove employees
        getRemoveEmployee(){
            connection.query("SELECT * FROM employees", function(err, res) {
                if (err) throw err;
            
                // Log all results of the SELECT statement
                console.log(res);
                connection.end();

              });
        }
        //defining method to update employee roles
        getUpdateEmployeeROle(){
            connection.query("SELECT * FROM employees", function(err, res) {
                if (err) throw err;
            
                // Log all results of the SELECT statement
                console.log(res);
                connection.end();
              });
        }
        //defining method to update employee manager
        getUpdateEmployeeManager(){
            connection.query("SELECT * FROM employees", function(err, res) {
                if (err) throw err;
            
                // Log all results of the SELECT statement
                console.log(res);
                connection.end();
              });
        }
    
}
//exporting module employees
module.exports = Employee