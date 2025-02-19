//
// Generated by JSON2Apex http://json2apex.herokuapp.com/
//
// The supplied json has fields with names that are not valid in apex
// and so can only be parsed with explicitly generated code, this option
// was auto selected for you.

public class QBPOQueryJSON {

	public class Line {
		public String DetailType {get;set;} 
		public Double Amount {get;set;} 
		public String Id {get;set;} 
		public ItemBasedExpenseLineDetail ItemBasedExpenseLineDetail {get;set;} 

		public Line(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'DetailType') {
							DetailType = parser.getText();
						} else if (text == 'Amount') {
							Amount = parser.getDoubleValue();
						} else if (text == 'Id') {
							Id = parser.getText();
						} else if (text == 'ItemBasedExpenseLineDetail') {
							ItemBasedExpenseLineDetail = new ItemBasedExpenseLineDetail(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Line consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class ItemBasedExpenseLineDetail {
		public VendorRef ItemRef {get;set;} 
		public VendorRef CustomerRef {get;set;} 
		public Integer Qty {get;set;} 
		public TaxCodeRef TaxCodeRef {get;set;} 
		public String BillableStatus {get;set;} 
		public Integer UnitPrice {get;set;} 

		public ItemBasedExpenseLineDetail(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'ItemRef') {
							ItemRef = new VendorRef(parser);
						} else if (text == 'CustomerRef') {
							CustomerRef = new VendorRef(parser);
						} else if (text == 'Qty') {
							Qty = parser.getIntegerValue();
						} else if (text == 'TaxCodeRef') {
							TaxCodeRef = new TaxCodeRef(parser);
						} else if (text == 'BillableStatus') {
							BillableStatus = parser.getText();
						} else if (text == 'UnitPrice') {
							UnitPrice = parser.getIntegerValue();
						} else {
							System.debug(LoggingLevel.WARN, 'ItemBasedExpenseLineDetail consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class TaxCodeRef {
		public String value {get;set;} 

		public TaxCodeRef(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'value') {
							value = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'TaxCodeRef consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public QueryResponse QueryResponse {get;set;} 
	public String time_Z {get;set;} // in json: time

	public QBPOQueryJSON(JSONParser parser) {
		while (parser.nextToken() != System.JSONToken.END_OBJECT) {
			if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
				String text = parser.getText();
				if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
					if (text == 'QueryResponse') {
						QueryResponse = new QueryResponse(parser);
					} else if (text == 'time') {
						time_Z = parser.getText();
					} else {
						System.debug(LoggingLevel.WARN, 'QBPOQueryJSON consuming unrecognized property: '+text);
						consumeObject(parser);
					}
				}
			}
		}
	}
	
	public class MetaData {
		public String CreateTime {get;set;} 
		public String LastUpdatedTime {get;set;} 

		public MetaData(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'CreateTime') {
							CreateTime = parser.getText();
						} else if (text == 'LastUpdatedTime') {
							LastUpdatedTime = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'MetaData consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class QueryResponse {
		public Integer startPosition {get;set;} 
		public Integer totalCount {get;set;} 
		public List<PurchaseOrder> PurchaseOrder {get;set;} 
		public Integer maxResults {get;set;} 

		public QueryResponse(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'startPosition') {
							startPosition = parser.getIntegerValue();
						} else if (text == 'totalCount') {
							totalCount = parser.getIntegerValue();
						} else if (text == 'PurchaseOrder') {
							PurchaseOrder = arrayOfPurchaseOrder(parser);
						} else if (text == 'maxResults') {
							maxResults = parser.getIntegerValue();
						} else {
							System.debug(LoggingLevel.WARN, 'QueryResponse consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class CustomField {
		public String DefinitionId {get;set;} 
		public String Type {get;set;} 
		public String Name {get;set;} 

		public CustomField(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'DefinitionId') {
							DefinitionId = parser.getText();
						} else if (text == 'Type') {
							Type = parser.getText();
						} else if (text == 'Name') {
							Name = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'CustomField consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class PurchaseOrder {
		public String DocNumber {get;set;} 
		public String SyncToken {get;set;} 
		public String domain {get;set;} 
		public VendorRef VendorRef {get;set;} 
		public String TxnDate {get;set;} 
		public Double TotalAmt {get;set;} 
		public VendorRef APAccountRef {get;set;} 
		public Boolean sparse {get;set;} 
		public List<Line> Line {get;set;} 
		public List<CustomField> CustomField {get;set;} 
		public String Id {get;set;} 
		public MetaData MetaData {get;set;} 

		public PurchaseOrder(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'DocNumber') {
							DocNumber = parser.getText();
						} else if (text == 'SyncToken') {
							SyncToken = parser.getText();
						} else if (text == 'domain') {
							domain = parser.getText();
						} else if (text == 'VendorRef') {
							VendorRef = new VendorRef(parser);
						} else if (text == 'TxnDate') {
							TxnDate = parser.getText();
						} else if (text == 'TotalAmt') {
							TotalAmt = parser.getDoubleValue();
						} else if (text == 'APAccountRef') {
							APAccountRef = new VendorRef(parser);
						} else if (text == 'sparse') {
							sparse = parser.getBooleanValue();
						} else if (text == 'Line') {
							Line = arrayOfLine(parser);
						} else if (text == 'CustomField') {
							CustomField = arrayOfCustomField(parser);
						} else if (text == 'Id') {
							Id = parser.getText();
						} else if (text == 'MetaData') {
							MetaData = new MetaData(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'PurchaseOrder consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class VendorRef {
		public String name {get;set;} 
		public String value {get;set;} 

		public VendorRef(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'name') {
							name = parser.getText();
						} else if (text == 'value') {
							value = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'VendorRef consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	
	public static QBPOQueryJSON parse(String json) {
		System.JSONParser parser = System.JSON.createParser(json);
		return new QBPOQueryJSON(parser);
	}
	
	public static void consumeObject(System.JSONParser parser) {
		Integer depth = 0;
		do {
			System.JSONToken curr = parser.getCurrentToken();
			if (curr == System.JSONToken.START_OBJECT || 
				curr == System.JSONToken.START_ARRAY) {
				depth++;
			} else if (curr == System.JSONToken.END_OBJECT ||
				curr == System.JSONToken.END_ARRAY) {
				depth--;
			}
		} while (depth > 0 && parser.nextToken() != null);
	}
	



    private static List<Line> arrayOfLine(System.JSONParser p) {
        List<Line> res = new List<Line>();
        if (p.getCurrentToken() == null) p.nextToken();
        while (p.nextToken() != System.JSONToken.END_ARRAY) {
            res.add(new Line(p));
        }
        return res;
    }






    private static List<CustomField> arrayOfCustomField(System.JSONParser p) {
        List<CustomField> res = new List<CustomField>();
        if (p.getCurrentToken() == null) p.nextToken();
        while (p.nextToken() != System.JSONToken.END_ARRAY) {
            res.add(new CustomField(p));
        }
        return res;
    }






    private static List<PurchaseOrder> arrayOfPurchaseOrder(System.JSONParser p) {
        List<PurchaseOrder> res = new List<PurchaseOrder>();
        if (p.getCurrentToken() == null) p.nextToken();
        while (p.nextToken() != System.JSONToken.END_ARRAY) {
            res.add(new PurchaseOrder(p));
        }
        return res;
    }




}