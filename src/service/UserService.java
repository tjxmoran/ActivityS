package service;

import model.User;

public interface UserService {
	// ����û�
	 public void addUser(User user);
	 
	// �鿴�û��Ƿ����
	 public boolean checkUser(User user);
	 
	 // ��ѯ�û�
	 public User getUserById(int Id);
	 
	 // �����û���Ϣ
	 public void changeToAdmin(int Id) ;
}
