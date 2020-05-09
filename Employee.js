// TODO: Write code to define and export the Employee class
//declaring mysql variable and to use mysql
var mysql = require("mysql");
const Index = require("./index");
const prompts = require('prompts');
const inquirer = require("inquirer");
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
        //select first_name & last_name from employee
        connection.query("select * from department RIGHT JOIN  role ON role.department_id  LEFT JOIN employee ON employee.id", function(err, res) {
            if (err) throw err;
        
            // Log all results of the SELECT statement
            console.table(res);
            connection.end();
        });
    }
    ////defining method to get all employees by department
    getAllEmployeeDepartment(){
        inquirer.prompt([
            {
                type: 'list',
                name: 'departmentname',
                message: 'What is the name of the department?',
                choices: ['Sales','Finance','Engineering','Finance'],

            }
        ]).then(function(response) {
            connection.query('INSERT INTO employee SET ?',
            {first_name: response.firstName,
            last_name: response.lastName,
            },
            function(error) {
                if (error) throw error
                console.log('Employee added')
              //initialquestions()
              connection.end();

            }
            )
        })

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
            //index2 = new Index(initialquestions())
            //connection.query("INSERT INTO employee(first_name,last_name) VALUES(? , ?);", function(err, res) {
                inquirer.prompt([
                    {
                        type: 'input',
                        name: 'firstName',
                        message: 'What is the employee first name?',
                    },
                    {
                        type: 'input',
                        name: 'lastName',
                        message: 'What is the employee last name?'
                    }
                ]).then(function(response) {
                    connection.query('INSERT INTO employee SET ?',
                    {first_name: response.firstName,
                    last_name: response.lastName,
                    },
                    function(error) {
                        if (error) throw error
                        console.log('Employee added')
                      //initialquestions()
                      connection.end();

                    }
                    )
                })

}              
                
            

        //defining method to remove employees
        getRemoveEmployee(){
            inquirer.prompt([
                {
                    type: 'input',
                    name: 'firstName',
                    message: 'What is the employee first name?',
                },
                {
                    type: 'input',
                    name: 'lastName',
                    message: 'What is the employee last name?'
                }
            ]).then(function(response) {
                connection.query('DELETE FROM employee WHERE first_name = ?  AND last_name =  ?; ',
          
                [ response.firstName,  
                response.lastName],
                
                function(error) {
                    if (error) throw error
                    console.log('Employee removed')
                  //initialquestions()
                  connection.end();

                }
                )
            })
        }
        //defining method to update employee roles
        getUpdateEmployeeROle(){
            inquirer.prompt([
                {
                    type: 'input',
                    name: 'title',
                    message: 'What is the employee title?',
                },
                {
                    type: 'input',
                    name: 'salary',
                    message: 'What is the employee salary?',
                },
                {
                type: 'input',
                name: 'departmentid',
                message: 'What is the employee department id?',
            }

                
            ]).then(function(response) {
                connection.query('INSERT INTO role (title, salary, department_id) values ("?",?,?)',
                [response.title,
                response.salary,
                response.departmentid
                ],
                function(error) {
                    if (error) throw error
                    console.log('role updated')
                    connection.end();

                  //initialquestions()
                 }
                )
            })
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