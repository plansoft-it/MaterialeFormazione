
console.log("Hello World!");

var a = 2 == "2"

console.log('' + a)

class Employee {
  constructor() {
    this.name = '';
    this.dept = 'general';
  }
}

var em = new Employee();

console.log(em.dept);

function ymployee(name, dept) {
   this.name = name || '';
   this.dept = dept || 'general';
   if (name)
      this.id = idCounter++;
}

var em2 = ymployee('','');
console.log(em2.dept);
