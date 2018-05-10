package action;

import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

import model.Employee;
import service.employeeService;

public class employeeAction extends superAction implements ModelDriven<Employee>, Preparable {

	private static final long serialVersionUID = 4L;
	private Employee model;
	private Integer employeeId;
	private employeeService employeeService;

	// 增
	public String add() {
		employeeService.add(model);
		return "add_success";
	}
	
	public void prepareAdd() {
		model = new Employee();
	}

	// 删
	public String delete() {
		employeeService.delete(employeeId);
		return "delete_success";
	}

	// 改
	public String update() {
		employeeService.update(model);
		return "update_success";
	}
	
	public void prepareUpdate() {
		model=employeeService.query(employeeId);
	}
	
	//查单个
	public String query() {
		session.setAttribute("employee", employeeService.query(employeeId));
		return "query_success";
	}
	
	//查所有
	public String queryAll(){
		session.setAttribute("employees_list", employeeService.queryAll());
		return "queryAll_success";
	}
	

	@Override
	public void prepare() throws Exception {

	}

	public void setEmployeeId(Integer employeeId) {
		this.employeeId = employeeId;
	}
	@Override
	public Employee getModel() {
		return model;
	}
	
	public void setEmployeeService(employeeService employeeService) {
		this.employeeService = employeeService;
	}

}
