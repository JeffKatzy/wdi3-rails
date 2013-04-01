# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Priority.delete_all
Task.delete_all


u1 = User.create(name: "Jeffrey", email: "Jeff@gmail.com", password: "password", password_confirmation: "password")
u2 = User.create(name: "Phil", email: "Phil@gmail.com", password: "password1", password_confirmation: "password1")
u3 = User.create(name: "Lara", email: "Lara@gmail.com", password: "password2", password_confirmation: "password2")

p1 = Priority.create(name: "high", color: "red", value: 1)
p2 = Priority.create(name: "low", color: "blue", value: 2)
p3 = Priority.create(name: "medium", color: "yellow", value: 3)
p4 = Priority.create(name: "high", color: "green", value: 1)
p5 = Priority.create(name: "low", color: "orange", value: 2)
p6 = Priority.create(name: "medium", color: "purple", value: 3)
p7 = Priority.create(name: "high", color: "magenta", value: 1)
p8 = Priority.create(name: "low", color: "blue", value: 2)
p9 = Priority.create(name: "medium", color: "green", value: 3)
p10 = Priority.create(name: "high", color: "yellow", value: 1)
p11 = Priority.create(name: "low", color: "red", value: 2)
p12 = Priority.create(name: "medium", color: "blue", value: 3)


t1 = Task.create(title: "Bring Milk", desc: "your old milk smells", duedate: "1/25/2013", is_complete: false)
t2 = Task.create(title: "Go to class", desc: "you have school", duedate: "1/27/2013", is_complete: true)
t3 = Task.create(title: "Go to gym", desc: "you are fat", duedate: "1/28/2013", is_complete: false)
t4 = Task.create(title: "Buy clothes", desc: "you are tattered", duedate: "3/1/2013", is_complete: false)
t5 = Task.create(title: "Buy beer", desc: "you are partying", duedate: "3/5/2013", is_complete: false)
t6 = Task.create(title: "Study Coding", desc: "you are dumb", duedate: "3/1/2013", is_complete: false)
t7 = Task.create(title: "Read Book", desc: "you are unenlightened", duedate: "3/4/2013", is_complete: false)
t8 = Task.create(title: "Watch TV", desc: "you are bored", duedate: "2/28/2013", is_complete: false)
t9 = Task.create(title: "Watch Movies", desc: "you are bored", duedate: "2/27/2013", is_complete: false)
t10 = Task.create(title: "Buy computer", desc: "you are rich", duedate: "2/28/2013", is_complete: false)
t11 = Task.create(title: "Buy shoes", desc: "you are feeling good", duedate: "3/3/2013", is_complete: false)
t12 = Task.create(title: "Call mom", desc: "you are a family man", duedate: "3/4/2013", is_complete: false)

u1.tasks = [t1, t2, t3, t4]
u1.save

u2.tasks = [t5, t6, t7, t8]
u2.save

u3.tasks = [t9, t10, t11, t12]
u3.save

t1.priority = p1
t1.save
t2.priority = p2
t2.save
t3.priority = p3
t3.save
t4.priority = p4
t4.save

t5.priority = p5
t5.save
t6.priority = p6
t6.save
t7.priority = p7
t7.save
t8.priority = p8
t8.save

t9.priority = p9
t9.save
t10.priority = p10
t10.save
t11.priority = p11
t11.save
t12.priority = p12
t12.save

u1.priorities = [p1, p2, p3, p4]
u1.save
u2.priorities = [p5, p6, p7, p8]
u2.save
u3.priorities = [p9, p10, p11, p12]
u3.save

u1.tasks = [t1, t2, t3, t4]
u2.tasks = [t5, t6, t7, t8]
u3.tasks = [t9, t10, t11, t12]

