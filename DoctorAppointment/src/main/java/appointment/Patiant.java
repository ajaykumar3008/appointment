package appointment;

public class Patiant {

	String name;
	String gender;
	int age;
	int weight;
	int height;
	String problem;
	
	public Patiant(String name, String gender, int age, int weight, int height, String problem) {
		
		this.name = name;
		this.gender = gender;
		this.age = age;
		this.weight = weight;
		this.height = height;
		this.problem = problem;
	}
	
	public Patiant() {
		
	}
	public String getName() {
		return name;
	}
	public String getGender() {
		return gender;
	}
	public int getAge() {
		return age;
	}
	public int getWeight() {
		return weight;
	}
	public int getHeight() {
		return height;
	}
	public String getProblem() {
		return problem;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public void setWeight(int weight) {
		this.weight = weight;
	}
	public void setHeight(int height) {
		this.height = height;
	}
	public void setProblem(String problem) {
		this.problem = problem;
	}
	
	
}
