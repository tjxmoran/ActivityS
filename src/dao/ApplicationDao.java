package dao;


import model.Application;

public interface ApplicationDao {
	
	public void addApplication(Application application);
	
	public void changeState(Application application);
	
	public Application getApplicationById(int Id);
	
	// ��Ϊ3��״̬�����룬�ֱ���벻ͬ��session�б���
	public void getApplicationsByTeamId(int Id);	
	public void getApplicationsByApplicantId(int Id);
}
