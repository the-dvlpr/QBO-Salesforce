public class QBInvoiceJSON {

	public class Line {
		public Double Amount;
		public String DetailType;
		public SalesItemLineDetail SalesItemLineDetail;
	}

	public class CustomField {
		public String DefinitionId;
		public String StringValue;
		public String Type;
		public String Name;
	}

	public class BillAddr {
		public String Id;
		public String Line1;
		public String Line2;
		public String Line3;
		public String Line4;
		public String Line5;
		public String City;
		public String CountrySubDivisionCode;
		public String PostalCode;
		public String Lat;
		public String Long_x;
		public String Country;
	}

    public class SalesTermRef {
        public String value;
    }

	public List<Line> Line;
	public List<CustomField> CustomField;
	public CustomerRef CustomerRef;
	public Date DueDate;
	public Double Balance;
	public String Id;
	public String SyncToken;
	public SalesTermRef SalesTermRef;
	public BillAddr BillAddr;
	public BillAddr ShipAddr;
	public EmailAddress BillEmail;
	public MemoRef CustomerMemo;
	public String EmailStatus;
	public String DocNumber;
	public Boolean AllowOnlineACHPayment;
	public Boolean AllowOnlineCreditCardPayment;

	public class EmailAddress{
		public string Address;
	}

	public class MemoRef{
		public string value;

	}


	public class SalesItemLineDetail {
		public ItemRef ItemRef;
		public ItemRef TaxCodeRef;
		public Decimal Qty;
        public Decimal UnitPrice;
	}

	public class ItemRef {
		public String value;
		public String name;
	}

	public class CustomerRef {
		public String value;
	}

	
	public static QBInvoiceJSON parse(String json) {
		return (QBInvoiceJSON) System.JSON.deserialize(json, QBInvoiceJSON.class);
	}
}