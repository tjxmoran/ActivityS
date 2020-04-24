package service;

import java.util.List;

import model.Comment;
import model.TeamComment;

public interface CommentService {
	
	// ��������
	public void addComment(Comment c);
	public void addTeamComment(TeamComment tc);
	
	// ͨ�����ѯ��Ӧ����
	public List<Comment> getCommentListByActId(int Id);
	
	// ���˲�ѯ�Լ�������
	public List<Comment> getCommentListByUserId(int Id);
	
	// �����ѯ��������
	public List<TeamComment> getTeamCommentListByTeamId(int Id);
}
