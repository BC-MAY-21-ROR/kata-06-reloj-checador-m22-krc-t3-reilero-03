# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
#Branch.create(name: "Reinosa", address: "dir 1-2")
#Branch.create(name: "Matamoros", address: "dir 1-2")
#Branch.create(name: "San Fernado", address: "dir 1-2")
#Branch.create(name: "Victoria", address: "dir 1-2")
#Branch.create(name: "Valledupar", address: "Calle 6")

Employee.create(name: "Alex" ,email: "alex@gmail.com", position: "CEO", employee_number: 1, private_number: 111, active: true, branch_id: 1)	
Employee.create(name: "Juan" ,email: "juan@gmail.com", position: "CEO", employee_number: 2, private_number: 112, active: true, branch_id: 2)	
Employee.create(name: "Matias" ,email: "matias@gmail.com", position: "CEO", employee_number: 3, private_number: 113, active: true, branch_id: 3)	
Employee.create(name: "Maria" ,email: "maria@gmail.com", position: "CTO", employee_number: 4, private_number: 114, active: true, branch_id: 1)	
Employee.create(name: "Linda" ,email: "linda@gmail.com", position: "CMO", employee_number: 5, private_number: 115, active: true, branch_id: 1)	
Employee.create(name: "Rosa" ,email: "rosa@gmail.com", position: "Manager", employee_number: 6, private_number: 116, active: true, branch_id: 2)	
Employee.create(name: "Pedro" ,email: "pedro@gmail.com", position: "Manager", employee_number: 7, private_number: 117, active: true, branch_id: 3)	
Employee.create(name: "Zoila" ,email: "zoila@gmail.com", position: "Seller", employee_number: 8, private_number: 118, active: true, branch_id: 4)	
Employee.create(name: "Veronica" ,email: "veronica@gmail.com", position: "Seller", employee_number: 9, private_number: 119, active: true, branch_id: 2)	
Employee.create(name: "Jose" ,email: "jose@gmail.com", position: "Seller", employee_number: 10, private_number: 120, active: true, branch_id: 4)	