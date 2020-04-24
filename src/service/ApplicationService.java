package service;

import model.Application;
import model.UserTeam;

public interface ApplicationService {
	
	// ����һ�������Ա
	//public void addApplication(UserTeam userTeam);
	public void addApplication(Application application);
	
	// ����ɹ���Ϊ��ʽ��Ա
	public void acceptApplication(Application application);
	
	// ���뱻�ܾ���
	//public void changeToRefused(UserTeam userTeam);
	public void denyApplication(Application application);
	
	// �õ������б�
	public void getAppListByTeam(int teamId);
	public void getApplicationsByApplicantId(int Id);
	
}
