package intf;

import java.util.List;

import beans.Customer;

public interface CustomerDAO {
	public int addCusteomer(Customer c);
	public Customer getCustomer(int id);
	public List<Customer> getCustomerList();
	public void updateCustomer(Customer customer);
}
