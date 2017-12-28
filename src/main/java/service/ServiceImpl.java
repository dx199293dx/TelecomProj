package service;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import beans.Bill;
import beans.CardInfo;
import beans.Customer;
import beans.CustomerFieldCanBeNull;
import beans.CustomerPlan;
import beans.Employee;
import beans.Issue;
import beans.Issue_CustomerName;
import beans.PhonePlanDetails;
import beans.Plan;
import intf.BillDAO;
import intf.CardInfoDAO;
import intf.CustomerDAO;
import intf.CustomerPlanDAO;
import intf.EmployeeDAO;
import intf.IssueDAO;
import intf.PlanDAO;
import intf.Service;
import util.DateUtils;



public class ServiceImpl implements Service {
	private EmployeeDAO employeeDao;
	private CustomerDAO customerDao;
	private PlanDAO planDao;
	private CustomerPlanDAO cpDao; 
	private CardInfoDAO ciDao; 
	private IssueDAO issueDao; 
	private BillDAO billDao;

	public void setBillDao(BillDAO billDao) {
		this.billDao = billDao;
	}

	public IssueDAO getIssueDao() {
		return issueDao;
	}

	public void setIssueDao(IssueDAO issueDao) {
		this.issueDao = issueDao;
	}

	public void setCiDao(CardInfoDAO ciDao) {
		this.ciDao = ciDao;
	}

	public void setCpDao(CustomerPlanDAO cpDao) {
		this.cpDao = cpDao;
	}

	public void setEmployeeDao(EmployeeDAO employeeDao) {
		this.employeeDao = employeeDao;
	}

	public void setCustomerDao(CustomerDAO customerDao) {
		this.customerDao = customerDao;
	}

	public void setPlanDao(PlanDAO planDao) {
		this.planDao = planDao;
	}

	@Override
	@Transactional
	public List<Employee> employeeList() {
		// TODO Auto-generated method stub
		return employeeDao.getEmployeeList();
	}

	@Override
	@Transactional
	public Employee employeeLogin(String userID, String password) {
		// TODO Auto-generated method stub
		ArrayList<Employee> list = (ArrayList<Employee>) employeeDao.getEmployeeList();
		for(Employee e : list) {
			if(e.getUserID().equals(userID) && e.getPassword().equals(password))
				return e;
		}
		return new Employee();
	}
	
	@Override
	@Transactional
	public List<Plan> getPlanList(){
		return planDao.getPlanList();
	}

	@Override
	@Transactional
	public void addCustomerPlan(CustomerPlan cp) {
		// TODO Auto-generated method stub
		CustomerFieldCanBeNull c = new CustomerFieldCanBeNull();
		c.setFirstName(cp.getFirstName());
		c.setLastName(cp.getLastName());
		c.setServicenumber(cp.getNumber());

		int cid = customerDao.addCusteomer(c);
		cp.setCid(cid);
		cpDao.addCustomerPlan(cp);
	}

	@Override
	@Transactional
	public List<Customer> getCustomerList() {
		// TODO Auto-generated method stub
		return customerDao.getCustomerList();
	}

	@Override
	@Transactional
	public void addEmployee(Employee e) {
		// TODO Auto-generated method stub
		employeeDao.addEmployee(e);

	}

	@Override
	public List<Customer> getCustomerListByNumber(String servicenumber, List<Customer> list) {
		// TODO Auto-generated method stub
		ArrayList<Customer> newList = new ArrayList<>();
		for(Customer c : list) {
			if(c.getServicenumber().equals(servicenumber)) {
				newList.add(c);
			}
		}
		return newList;
	}

	
	@Override
	@Transactional
	public List<Issue_CustomerName> getIssueList() {
		// TODO Auto-generated method stub
		ArrayList<Issue> issueList = (ArrayList<Issue>)issueDao.getIssueList() ;
		ArrayList<Issue_CustomerName> list = new ArrayList<>(); 
		for(Issue i : issueList) {
			Issue_CustomerName issue = new Issue_CustomerName();
			issue.setId(i.getId());
			issue.setType(i.getType());
			issue.setSubType(i.getSubType());
			issue.setDetails(i.getDetails());
			issue.setStatus(i.getStatus());
			Customer c = customerDao.getCustomer(i.getCid());
			issue.setCustomerName(c.getFirstName()+" " + c.getLastName());
			list.add(issue);
		}
		return list;
	}

	@Override
	@Transactional
	public Issue_CustomerName getIssueByID(String id, List<Issue_CustomerName> issueList) {
		// TODO Auto-generated method stub
		for(Issue_CustomerName issue : issueList) {
			if(issue.getId()==Integer.parseInt(id)) {
				return issue;
			}
		}
		return null;
	}

	@Override
	@Transactional
	public List<Issue_CustomerName> modifyStatus(Issue_CustomerName issue) {
		// TODO Auto-generated method stub
		int id = issue.getId();
		Issue i = issueDao.getIssue(id);
		i.setStatus(issue.getStatus());
		issueDao.updateIssue(i);
		List<Issue_CustomerName> list = new ArrayList<>();
		list.add(issue);
		return list;
	}

	@Override
	public List<Issue_CustomerName> getIssueListByName(String name, List<Issue_CustomerName> list) {
		// TODO Auto-generated method stub
		ArrayList<Issue_CustomerName> newList = new ArrayList<>();
		for(Issue_CustomerName i : list) {
			if(i.getCustomerName().toLowerCase().equals(name.toLowerCase())) {
				newList.add(i);
			}
		}
		return newList;
	}


	@Override
	@Transactional
	public PhonePlanDetails getMyPlan(int id) {
		// TODO Auto-generated method stub
		PhonePlanDetails ppd = new PhonePlanDetails();
		Customer c = customerDao.getCustomer(id);
		CustomerPlan cp = cpDao.getCustomerPlanByNumber(c.getServicenumber());
		ppd.setId(cp.getId());
		int pid = cp.getPid();
		Plan p = planDao.getPlan(pid);
		ppd.setType(p.getType());
		ppd.setName(p.getName());
		ppd.setPrice(p.getPrice());
		String[] detail = p.getDetails().split(",");
		ppd.setText(detail[0].substring(5));
		ppd.setVoice(detail[1].substring(6));
		ppd.setData(detail[2].substring(5));
		
		return ppd;
	}

	

	// ------------------------------------CUSTOMER--------------------------------------------------- 
	@Override
	@Transactional
	public Customer custLogin(String userID, String password) {
		
		ArrayList<Customer> clist = (ArrayList<Customer>) customerDao.getCustomerList();
		System.out.println(clist);
		for(Customer cust : clist) {
			String cuserID = cust.getUserID();
			String pass = cust.getPassword();
			System.out.println(cuserID+" "+pass);
			if(cuserID!=null && pass != null && cuserID.equals(userID) && pass.equals(password)) {

				return cust;
			}
		}
		return new Customer();
	}

	@Override
	@Transactional
	public Customer registrationVal(String servicenumber, String firstName, String lastName) {
		ArrayList<Customer> calist = (ArrayList<Customer>) customerDao.getCustomerList();
		for(Customer c : calist) {
			if(c.getServicenumber().equals(servicenumber) && c.getFirstName().equals(firstName) && c.getLastName().equals(lastName)) {
				return c;
			}
		}
		return new Customer();
	}


	@Override
	@Transactional
	public void addCustomer(CustomerFieldCanBeNull c) {
		// TODO Auto-generated method stub
		customerDao.addCusteomer(c);
		
	}

	@Override
	@Transactional
	public void saveCustomer(Customer c) {
		// TODO Auto-generated method stub
//		System.out.println( c);
//		int id = c.getId();
//		Customer customer = customerDao.getCustomer(id);
//		customer.setUserID(c.getUserID());
//		customer.setPassword(c.getPassword());
//		customer.setEmail(c.getEmail());
//		customer.setPhone(c.getPhone());
//		customer.setSsn(c.getSsn());
//		customer.setStreet(c.getStreet());
//		customer.setCity(c.getCity());
//		customer.setState(c.getState());
//		customer.setZip(c.getZip());
		customerDao.updateCustomer(c);
		
	}

	@Override
	@Transactional
	public ArrayList<PhonePlanDetails> getPhonePlanList() {
		// TODO Auto-generated method stub
		ArrayList<Plan> pList = (ArrayList<Plan>) planDao.getPlanList();
		ArrayList<PhonePlanDetails> phonePlanList = new ArrayList<>();
		for(Plan p : pList) {
			if(p.getType().equals("phone")) {
				PhonePlanDetails ppd = new PhonePlanDetails();
				ppd.setId(p.getId());
				ppd.setType(p.getType());
				ppd.setName(p.getName());
				ppd.setPrice(p.getPrice());
				ppd.setText(p.getDetails().split(",")[0].substring(5));
				ppd.setVoice(p.getDetails().split(",")[1].substring(6));
				ppd.setData(p.getDetails().split(",")[2].substring(5));
				phonePlanList.add(ppd);
			}
		}

		return phonePlanList;
	}

	@Override
	@Transactional
	public PhonePlanDetails changePlan(int pid, Customer c) {
		// TODO Auto-generated method stub
		CustomerPlan cp = cpDao.getCustomerPlanByNumber(c.getServicenumber());
		cp.setPid(pid);
		cpDao.update(cp);
		return getMyPlan(c.getId());
	}

	@Override
	@Transactional
	public List<Bill> getmyBill(String servicenumber) {
			
		ArrayList<Bill> bills = (ArrayList<Bill>) billDao.getCustomerBillList();
		ArrayList<Bill> bills2 = new ArrayList<>();
		for(Bill b : bills) {
			if(b.getServicenumber().equals(servicenumber)) {
				
				bills2.add(b);
			}
		}
		System.out.println(bills2);
		return bills2;
	}

	@Override
	@Transactional
	public Bill currentBill(List<Bill> blist) {
		// TODO Auto-generated method stub
		
		ArrayList<Bill> blist1 = (ArrayList<Bill>) billDao.getCustomerBillList();
		Bill currentBill = blist.get(0);
		String max="00/00/0000";
		for(Bill b : blist) {
			if(DateUtils.greaterThan(b.getStartDate(), max)) {
				max=b.getStartDate();
				currentBill = b;
			}
		}
		System.out.println(currentBill);

		return currentBill;
	}

	@Override
	@Transactional
	public ArrayList<CardInfo> getCardList(int cid) {
		// TODO Auto-generated method stub
		ArrayList<CardInfo> list = (ArrayList<CardInfo>) ciDao.getCardInfoList();
		ArrayList<CardInfo> myCardList = new ArrayList<>();
		for(CardInfo ci : list) {
			if(ci.getCid()==cid) {
				myCardList.add(ci);
			}
		}
		return myCardList;
	}

	@Override
	@Transactional
	public boolean saveCard(String type, String name, String cardNo, String month, String year, String code, int cid) {
		// TODO Auto-generated method stub
		String expireDate = month+"/"+year;
		HashSet<String> set = new HashSet<>();
		for(CardInfo ci : getCardList(cid)) {
			set.add(ci.getCardNo());
		}
		if(!set.contains(cardNo)) {
			CardInfo card = new CardInfo();
			card.setCardNo(cardNo);
			card.setName(name);
			card.setExpireDate(expireDate);
			card.setType(type);
			card.setCode(code);
			card.setCid(cid);
			ciDao.addCardInfo(card);
		}
		return true;
	}

	@Override
	@Transactional
	public String pay(Bill bill) {
		// TODO Auto-generated method stub
		bill.setPaid(bill.getAmount());
		billDao.updateBill(bill);
		return "success";
	}

	@Override
	@Transactional

	public String submitIssue(Customer c, String type, String subtype, String message) {
		// TODO Auto-generated method stub
		int cid = c.getId();
		Issue i = new Issue();
		i.setCid(cid);
		i.setType(type);
		i.setSubType(subtype);
		i.setDetails(message);
		i.setStatus("New");
		issueDao.addIssue(i);
		return "success";
	}

	@Override
	@Transactional
	public Customer modifyCustomer(Customer c, String email, String phone, String street, String city, String state,
			String zip) {
		// TODO Auto-generated method stub
		c.setEmail(email);
		c.setPhone(phone);
		c.setStreet(street);
		c.setCity(city);
		c.setState(state);
		c.setZip(zip);
		customerDao.updateCustomer(c);
		return c;
	}

	@Override
	public String remainingDays(String s) throws ParseException {
		// TODO Auto-generated method stub
		return DateUtils.dateDifference(s);
	}

	

}
