package dao;

import java.util.List;
import model.Employee;

public class employeeDao extends baseDao {
	// 增
	public void add(Employee employee) {
		getSession().save(employee);
	}

	// 删
	public void delete(Integer id) {
		Employee employee = (Employee) getSession().get(Employee.class, id);
		getSession().delete(employee);
	}

	// 改
	public void update(Employee employee) {
		getSession().update(employee);
	}

	// 查
	public Employee query(Integer id) {
		return (Employee) getSession().get(Employee.class, id);
	}

	public List<Employee> queryAll() {
		List<Employee> list = getSession().createQuery("from Employee").list();
		return list;
	}

}
