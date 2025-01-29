@isTest

public class HashStringTest {

public static testMethod void doTest(){
    
Test.startTest();

Account acc = new Account(name='Salesforce Time');
insert acc;

list<string> Idlist = new list<string>();

Idlist.add(acc.id);

HashString.calcHash(Idlist);

Test.stopTest();

}
}