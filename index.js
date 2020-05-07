const inquirer = require("inquirer");
const Employee = require("./Employee");
const mysql = require("mysql2/promise");
let questions = [
    {
      type: 'list',
      message: 'What would you like to do?',
      choices: ['View All employees?','View all employees by department?ager','View all employees by manager?','Add Employee','Remove Employe','Updat Employee ROle','Updat Employee Manager'],
      name: 'initialquestions'
    }
  ]


initialquestions()

function initialquestions(){
  
        inquirer
          .prompt(questions).then(answer => {
            let emp = new Employee (answer.AllEmployeeName,answer.AllEmployeeDepartment,answer.AllEmployeeByManager,answer.AddEmployee,answer.RemoveEmployee,answer.UpdateEmployeeRole,answer.AllEmployeeByManager) 
        
                if (answer.initialquestions ==='View All employees?'){
               
emp.getAllEmployeeName()

                }
                else if(answer.initialquestions ==='View all employees by department?ager'){
                    console.log('View all employees by department?ager')
                }
                else if(answer.initialquestions ==='View all employees by manager?'){
                    console.log('View all employees by by manager?')                }
                 else if(answer.initialquestions ==='Add Employee'){
                  
                  getNameEmployee()
                  function getNameEmployee(){  


                      //let fullname = new Employee (firstlastname.AddEmployee)
                      emp.getAddEmployee()
        
                              }

                  console.log('Add Employee')                }
                    else if(answer.initialquestions ==='Remove Employe'){
                    
                      emp.getRemoveEmployee()   }
                        else if(answer.initialquestions ==='Updat Employee ROle'){
                            
                          //console.log('Updat Employee ROle')     
                          emp.getUpdateEmployeeROle()           
                          }
                    
                            else if(answer.initialquestions ==='Updat Employee Manager'){
                                console.log('Updat Employee Manager')                }
                            else 
                {
                    console.log('if the code reaches here there is a big problem')}
                }
               
          )}
          
//module.exports = initialquestions();