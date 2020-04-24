package service;

import java.util.List;

import model.Activity;

public interface ActivityService {
	
	// -----��ӻ-----
	public void addAct(Activity activity);
	
	// -----��ѯ�-----
	// ͨ������ѯ���1-ѧϰ�� 2-������ 3-��� 4-��ˣ 5-������
	public boolean getActByClass(int classes);
	// ͨ������е�ʱ�䳤�̲�ѯ���1-���� 2-���ڣ�
	public boolean getActByTime(int isLong);
	// ͨ���Id��ѯ�
	public Activity getActById(int Id);
	// ͨ����ٰ��˲�ѯ�
	public void getActByOwnder(int ownerId);
	
	// ------���»����-----
	// ���¸û���ж�����
	public void updateTeamNum(int actId);
	// ���»����
	public void updateAct(Activity activity);
}
