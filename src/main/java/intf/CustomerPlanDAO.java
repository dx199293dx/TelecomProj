package intf;

import beans.CustomerPlan;

public interface CustomerPlanDAO {

	public void addCustomerPlan(CustomerPlan cp);
	public CustomerPlan getCustomerPlanByNumber(String number);
	public void update(CustomerPlan cp);
}
