package intf;

import java.util.List;

import beans.Customer;

public interface CustomerDAO {
	public int addCusteomer(Customer c);
	public Customer getCustemer(int id);
	public List<Customer> getCustomerList();
}
