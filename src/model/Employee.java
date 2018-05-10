package model;

public class Employee {
	// 姓名
	private String name;
	// 性别
	private String gender;
	// 年龄
	private Integer age;
	// 工号
	private Integer employeeId;
	// 工龄
	private Integer employeeYear;
	// 工资
	private Integer salary;
	// 年终奖
	private Integer FSalary;

	public Integer getSalary() {
		return salary;
	}

	public void setSalary(Integer salary) {
		this.salary = salary;
	}

	public Integer getFSalary() {
		return FSalary;
	}

	public void setFSalary(Integer fSalary) {
		FSalary = fSalary;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public Integer getEmployeeId() {
		return employeeId;
	}

	public void setEmployeeId(Integer employeeId) {
		this.employeeId = employeeId;
	}

	public Integer getEmployeeYear() {
		return employeeYear;
	}

	public void setEmployeeYear(Integer employeeYear) {
		this.employeeYear = employeeYear;
	}

}
