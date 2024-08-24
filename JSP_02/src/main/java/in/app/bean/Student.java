package in.app.bean;

public class Student {

	private Integer id;
	private String name;
	private String address;
	private Integer salary;

	static {
		System.out.println(".class file is loading");
	}

	public Student() {
		System.out.println("Student Object is created");
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Integer getSalary() {
		return salary;
	}

	public void setSalary(Integer salary) {
		this.salary = salary;
	}

}
