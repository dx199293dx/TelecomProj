package intf;

import java.util.List;

import beans.Issue;

public interface IssueDAO {
	public int addIssue(Issue i);
	public void updateIssue(Issue i);
	public List<Issue> getIssueList();
}
