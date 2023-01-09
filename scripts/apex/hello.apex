// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

List<Account> accList=new List<Account> ([select id, name from account limit 5]);
Map<id, account> accMap=new Map<id, account> ();
for(Account acc:accList){
    accMap.put(acc.Id, acc);
}
for(Account acc:accMap.values()){
   system.debug(acc) ;
}