package cm.models;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="project")
public class Project implements Comparable<Object>
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="project_id")
	private Integer projectId;
	
	@Column(name="project_name")
	private String projectName;
	
	//  "The default constructor exists only for the sake of JPA. 
	//  You do not use it directly, so it is designated as protected"
	//  Source: https://spring.io/guides/gs/accessing-data-jpa/
	protected Project() {
		super();
	}

	public Project(Integer projectId, String projectName) {
		super();
		this.projectId = projectId;
		this.projectName = projectName;
	}

	public Integer getProjectId() {
		return projectId;
	}

	public String getProjectName() {
		return projectName;
	}
	
	public void setProjectId(Integer projectId) {
		this.projectId = projectId;
	}

	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}

	public int compareTo(Object object)
	{
		return this.getProjectName().compareTo( ((Project)object).getProjectName());
	}
	
	
	@Override
	public boolean equals(Object object)
	{
		if (object == null) {return false;}

		if (object.getClass() != Project.class) {return false;}

		return this.getProjectId().equals(((Project)object).getProjectId()) && this.getProjectName().equals(((Project)object).getProjectName());
	}

	@Override
	public int hashCode()
	{
		return this.getProjectId().hashCode() + 1000000*this.getProjectName().hashCode();
	}
	

}
