package intf;

import java.util.ArrayList;
import java.util.List;

import beans.Bill;
import beans.CardInfo;
import beans.Customer;
import beans.CustomerPlan;
import beans.Employee;
import beans.Issue;
import beans.Issue_CustomerName;
import beans.PhonePlanDetails;
import beans.Plan;

public interface Service {
	public Employee employeeLogin(String userID, String password);
	public void addEmployee(Employee e);
	public void addCustomerPlan(CustomerPlan cp);
	
	public List<Employee> employeeList();	
	public List<Plan> getPlanList();	
	public List<Customer> getCustomerList();
	public List<Customer> getCustomerListByNumber(String servicenumber, List<Customer> list);
	public List<Issue_CustomerName> getIssueList();
	public Issue_CustomerName getIssueByID(String id, List<Issue_CustomerName> issueList);
	public List<Issue_CustomerName> modifyStatus(Issue_CustomerName issue);
	public List<Issue_CustomerName> getIssueListByName(String name, List<Issue_CustomerName> list);

	public PhonePlanDetails getMyPlan(int id);
	public PhonePlanDetails changePlan(int pid, Customer c);
	public ArrayList<PhonePlanDetails> getPhonePlanList();
	
	public Customer custLogin(String userID, String password);
	public Customer registrationVal(String servicenumber, String firstName, String lastName);
	public void addCustomer(Customer c);
	public void saveCustomer(Customer c);
	
	public List<Bill> getmyBill(String servicenumber);
	public Bill currentBill(List<Bill> blist);
	public ArrayList<CardInfo> getCardList(int cid);
	public boolean saveCard(String type, String name, String cardNo, String month, String year, String code, int cid);
	public void pay(Bill bill);

}
