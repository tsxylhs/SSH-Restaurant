package service;

import java.util.List;

import dao.employeeDao;
import model.Employee;

public class employeeService {
	private employeeDao employeeDao;

	// 增
	public void add(Employee employee) {
		employeeDao.add(employee);
	}

	// 删
	public void delete(Integer id) {
		employeeDao.delete(id);
	}

	// 改
	public void update(Employee employee) {
		employeeDao.update(employee);
	}

	// 查
	public Employee query(Integer id) {
		return employeeDao.query(id);
	}
	
	public void setEmployeeDao(employeeDao employeeDao) {
		this.employeeDao = employeeDao;
	}

	public List<Employee> queryAll() {
		return employeeDao.queryAll();
	}

}
