

#include <iostream>
#include <mysql++/mysql++.h>

using   namespace  std ; 
using   namespace  mysqlpp ;


void menuPrincipal(){

	cout << "Bienvenue sur notre bibliothèque !" << endl;
	cout << " " << endl;
	cout << "Menu Principal :" << endl;
	cout << "(1)  Liste des livres" << endl;
	cout << "(2)  Liste des abonnés" << endl;
	cout << "(3)  Rechercher un livre" << endl; // ensuite on pourra rechercher les exemplaires d'un livre
	cout << "(4)  Ajouter un livre" << endl;
	cout << "(5)  Supprimer un livre" << endl;
	cout << "(6)  Ajouter un exemplaire" << endl;
	cout << "(7)  Supprimer un exemplaire" << endl;
	cout << "(8)  Ajouter un abonné" << endl;
	cout << "(9)  Supprimer un abonné" << endl;
	cout << "(10) Ajouter un emprunt" << endl;
	cout << "(11) Liste des exemplaires empruntés à une date donnée" << endl;
	cout << "(12) Quitter" << endl<<endl;
	cout << "saisisez le numéro de l'action voulu";
	cout << " " << endl;

}


int reponse(int quit){
	cout << "(1) Afficher le Menu Principal" << endl;
	cout << "(2) Quitter" << endl;
	cout << " " << endl;

	int res2;
	cout << "Que voulez-vous faire ? "; cin >> res2;
				switch(res2){
				/*menu principal*/
				case 1:{
					cout << "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n" << endl;
				} break;

				/*quitter*/
				case 2:{quit=1;} break;
				}
				return quit;
}


void listBook(){
try   {
        Connection conn(false); 
        conn.connect("tp2_laurent_johnson","localhost","root","") ; 
        Query query = conn.query();

	 /* Now SELECT */
        query<<"SELECT * FROM Book"; 
        StoreQueryResult ares  =  query.store() ; 
	for(size_t i= 0; i<ares.num_rows();i++) {
	   cout<<"ISBN: "<<ares[i] [ "ISBN" ]<<" - titre : "<<ares[i]["title"]<<" - edition : "<<ares[i]["edition"]<<" - year : "<<ares[i]["year"]<<endl; 
	}


 }   catch( BadQuery er )   {   // handle any connection or 
         // query errors that may come up 
      cerr<<"Error:"<<er.what()<<endl; 
         return; 
     }   catch(const  BadConversion &  er){ 
         // Handle bad conversions 
  cerr<<"Conversion error: "<<er.what()<<endl<<
                 " \t retrieved data size: "<<er.retrieved<< 
                 ", actual size: "<<er.actual_size<<endl; 
         return ; 
     }   catch(const  Exception &  er){ 
         // Catch-all for any other MySQL++ exceptions 
         cerr<<"Error: "<<er.what()<<endl; 
         return ; 
     } 

	  return; 
}


void listBorrower(){
try   {
        Connection conn(false); 
        conn.connect("tp2_laurent_johnson","localhost","root","") ; 
        Query query = conn.query();

	 /* Now SELECT */
        query<<"SELECT * FROM Borrower"; 
        StoreQueryResult ares  =  query.store() ; 
	for(size_t i= 0; i<ares.num_rows();i++) {
	  cout<<"No: "<<ares[i] [ "borrowerNo" ]<<" - Nom : "<<ares[i]["borrowerName"]<<"\n  Adresse : "<<ares[i]["borrowerAddress"]<<endl<<endl; 
	}


 }   catch( BadQuery er )   {   // handle any connection or 
         // query errors that may come up 
      cerr<<"Error:"<<er.what()<<endl; 
         return; 
     }   catch(const  BadConversion &  er){ 
         // Handle bad conversions 
  cerr<<"Conversion error: "<<er.what()<<endl<<
                 " \t retrieved data size: "<<er.retrieved<< 
                 ", actual size: "<<er.actual_size<<endl; 
         return ; 
     }   catch(const  Exception &  er){ 
         // Catch-all for any other MySQL++ exceptions 
         cerr<<"Error: "<<er.what()<<endl; 
         return ; 
     } 

	  return; 
}




void findBook(){
try   {
        Connection conn(false); 
        conn.connect("tp2_laurent_johnson","localhost","root","") ; 
        Query query = conn.query();

	 /* Now SELECT */
	cout<<"Entrez votre recherche : ";
	string s;
	cin.ignore();
	getline(cin,s);
        query<<"SELECT * FROM Book WHERE title LIKE \"%"+s+"%\""; 
        StoreQueryResult ares  =  query.store() ;
	cout<<"\nResultat :\n\n";
	for(size_t i= 0; i<ares.num_rows();i++) {
	   cout<<"ISBN: "<<ares[i] [ "ISBN" ]<<" - titre : "<<ares[i]["title"]<<" - edition : "<<ares[i]["edition"]<<" - year : "<<ares[i]["year"]<<endl; 
	}
	cout<<endl<<endl;

		string res;
	cout << "Voulez-vous avoir la liste des exemplaires d'un livre en particulier ? (oui/non) "; cin >> res;
	cout << endl;
	if(res=="oui"){
		cout << "Entrez le titre du livre : ";
		string rep;
		cin.ignore(); getline(cin,rep);
		query<<"SELECT copyNo FROM BookCopy NATURAL JOIN Book WHERE title =\""+rep+"\" ORDER BY copyNo";

		StoreQueryResult ares2  =  query.store() ;
		cout<<"\nListe des exemplaires :\n\n";
		for(size_t i= 0; i<ares2.num_rows();i++) {
			cout<<"Numero de copie: "<<ares2[i] [ "copyNo" ]<<endl;
		}
		cout<<endl;
	}



 }   catch( BadQuery er )   {   // handle any connection or 
         // query errors that may come up 
      cerr<<"Error:"<<er.what()<<endl; 
         return; 
     }   catch(const  BadConversion &  er){ 
         // Handle bad conversions 
  cerr<<"Conversion error: "<<er.what()<<endl<<
                 " \t retrieved data size: "<<er.retrieved<< 
                 ", actual size: "<<er.actual_size<<endl; 
         return ; 
     }   catch(const  Exception &  er){ 
         // Catch-all for any other MySQL++ exceptions 
         cerr<<"Error: "<<er.what()<<endl; 
         return ; 
     } 

	  return; 
}


void addBook(){
try   {
        Connection conn(false); 
        conn.connect("tp2_laurent_johnson","localhost","root","") ; 
        Query query = conn.query();

	cout<<"Ajouter un livre\n";
	cout<<"Entrez l'ISBN : ";
	int i;
	cin>>i;
	cout<<"Entrez le titre du livre : ";
	string s;
	cin.ignore();
	getline(cin,s);
	cout<<"Entrez le numéro d'édition : ";
	int e;
	cin>>e;
	cout<<"Entrez l'année d'édition : ";
	int y;
	cin>>y;

	/* Now INSERT */
        query<<"INSERT INTO Book "<< 
	  "VALUES ("<<i<<",\""<<s<<"\","<<e<<","<<y<<");" ; 
	query.execute();


 }   catch( BadQuery er )   {
      cerr<<"Error:"<<er.what()<<endl; 
         return; 
     }   catch(const  BadConversion &  er){ 
         // Handle bad conversions 
  cerr<<"Conversion error: "<<er.what()<<endl<<
                 " \t retrieved data size: "<<er.retrieved<< 
                 ", actual size: "<<er.actual_size<<endl; 
         return ; 
     }   catch(const  Exception &  er){ 
         // Catch-all for any other MySQL++ exceptions 
         cerr<<"Error: "<<er.what()<<endl; 
         return ; 
     } 

	  return; 
}


void deleteBook(){
try   {
        Connection conn(false); 
        conn.connect("tp2_laurent_johnson","localhost","root","") ; 
        Query query = conn.query();

	cout<<"Supprimer un livre\n";
	cout<<"Entrez l'ISBN du livre à supprimer :"<<endl;
	int i;
	cin>>i;

	/* Now Delete */
        query<<"DELETE FROM Book WHERE Book.ISBN="<< 
	  i<<";" ; 
	query.execute();


 }   catch( BadQuery er )   {   // handle any connection or 
         // query errors that may come up 
      cerr<<"Error:"<<er.what()<<endl; 
         return; 
     }   catch(const  BadConversion &  er){ 
         // Handle bad conversions 
  cerr<<"Conversion error: "<<er.what()<<endl<<
                 " \t retrieved data size: "<<er.retrieved<< 
                 ", actual size: "<<er.actual_size<<endl; 
         return ; 
     }   catch(const  Exception &  er){ 
         // Catch-all for any other MySQL++ exceptions 
         cerr<<"Error: "<<er.what()<<endl; 
         return ; 
     } 

	  return; 
}

void addBookCopy(){
try   {
        Connection conn(false); 
        conn.connect("tp2_laurent_johnson","localhost","root","") ; 
        Query query = conn.query();

	cout<<"Ajouter un exemplaire d'un livre\n";
	cout<<"Entrez l'ISBN :"<<endl;
	int i;
	cin>>i;
	cout<<"Entrez le numéro de copie : "<<endl;
	int e;
	cin>>e;
	cout<<"available (1) ou non (2) : "<<endl;
	int a;
	cin>>a;
	string av;
	if(a==1){av="true";}else{av="false";}

	/* Now INSERT */
        query<<"INSERT INTO BookCopy "<< 
	  "VALUES ("<<e<<","<<i<<",\""<<av<<"\");" ; 
	query.execute();


 }   catch( BadQuery er )   {   // handle any connection or 
         // query errors that may come up 
      cerr<<"Error:"<<er.what()<<endl; 
         return; 
     }   catch(const  BadConversion &  er){ 
         // Handle bad conversions 
  cerr<<"Conversion error: "<<er.what()<<endl<<
                 " \t retrieved data size: "<<er.retrieved<< 
                 ", actual size: "<<er.actual_size<<endl; 
         return ; 
     }   catch(const  Exception &  er){ 
         // Catch-all for any other MySQL++ exceptions 
         cerr<<"Error: "<<er.what()<<endl; 
         return ; 
     } 

	  return; 
}


void deleteBookCopy(){
try   {
        Connection conn(false); 
        conn.connect("tp2_laurent_johnson","localhost","root","") ; 
        Query query = conn.query();

	cout<<"Supprimer un livre\n";
	cout<<"Entrez le numéro de copie de l'exemplaire à supprimer :"<<endl;
	int i;
	cin>>i;

	/* Now Delete */
        query<<"DELETE FROM BookCopy WHERE BookCopy.copyNo="<< 
	  i<<";" ; 
	query.execute();


 }   catch( BadQuery er )   {   // handle any connection or 
         // query errors that may come up 
      cerr<<"Error:"<<er.what()<<endl; 
         return; 
     }   catch(const  BadConversion &  er){ 
         // Handle bad conversions 
  cerr<<"Conversion error: "<<er.what()<<endl<<
                 " \t retrieved data size: "<<er.retrieved<< 
                 ", actual size: "<<er.actual_size<<endl; 
         return ; 
     }   catch(const  Exception &  er){ 
         // Catch-all for any other MySQL++ exceptions 
         cerr<<"Error: "<<er.what()<<endl; 
         return ; 
     } 

	  return; 
}

void addBorrower(){
try   {
        Connection conn(false); 
        conn.connect("tp2_laurent_johnson","localhost","root","") ; 
        Query query = conn.query();

	cout<<"Ajouter un abonné\n";
	cout<<"Entrez le numéro d'abonné :"<<endl;
	int i;
	cin>>i;
	cout<<"Entrez le prénom nom de l'abonné :"<<endl;
	string s;
	cin.ignore();
	getline(cin,s);
	cout<<"Entrez l'adresse de l'abonné :"<<endl;
	string adr;
	getline(cin,adr);

	/* Now INSERT */
        query<<"INSERT INTO Borrower "<< 
	  "VALUES ("<<i<<",\""<<s<<"\",\""<<adr<<"\");" ; 
	query.execute();


 }   catch( BadQuery er )   {   // handle any connection or 
         // query errors that may come up 
      cerr<<"Error:"<<er.what()<<endl; 
         return; 
     }   catch(const  BadConversion &  er){ 
         // Handle bad conversions 
  cerr<<"Conversion error: "<<er.what()<<endl<<
                 " \t retrieved data size: "<<er.retrieved<< 
                 ", actual size: "<<er.actual_size<<endl; 
         return ; 
     }   catch(const  Exception &  er){ 
         // Catch-all for any other MySQL++ exceptions 
         cerr<<"Error: "<<er.what()<<endl; 
         return ; 
     } 

	  return; 
}


void deleteBorrower(){
try   {
        Connection conn(false); 
        conn.connect("tp2_laurent_johnson","localhost","root","") ; 
        Query query = conn.query();

	cout<<"Supprimer un abonné\n";
	cout<<"Entrez le numéro de l'abonné à supprimer :"<<endl;
	int i;
	cin>>i;

	/* Now Delete */
        query<<"DELETE FROM Borrower WHERE Borrower.borrowerNo="<< 
	  i<<";" ; 
	query.execute();


 }   catch( BadQuery er )   {   // handle any connection or 
         // query errors that may come up 
      cerr<<"Error:"<<er.what()<<endl; 
         return; 
     }   catch(const  BadConversion &  er){ 
         // Handle bad conversions 
  cerr<<"Conversion error: "<<er.what()<<endl<<
                 " \t retrieved data size: "<<er.retrieved<< 
                 ", actual size: "<<er.actual_size<<endl; 
         return ; 
     }   catch(const  Exception &  er){ 
         // Catch-all for any other MySQL++ exceptions 
         cerr<<"Error: "<<er.what()<<endl; 
         return ; 
     } 

	  return; 
}

void addBookLoan(){
try   {
        Connection conn(false); 
        conn.connect("tp2_laurent_johnson","localhost","root","") ; 
        Query query = conn.query();
	Query query1 = conn.query();
	Query query2 = conn.query();

	cout<<"Ajouter un emprunt\n";
	cout<<"Entrez le prenom nom exact de l'emprunteur :"<<endl;
	string s;
	cin.ignore();
	getline(cin,s);
	
	//query1<<"SELECT borrowerNo FROM Borrower WHERE borrowerName=\""+s+"\""; 
        StoreQueryResult ares; 
	
	//if(ares.num_rows()>1){int e;
	//e=ares[0]["borrowerNo"];
	

	string dateOut,dateDue; string j,m,a;
        cout << "Date de sortie du livre:" << endl;
        cout << "Jour (DD) ? : "; cin >> j;
        cout << "Mois (MM) ? : "; cin >> m;
        cout << "Annee (YYYY) ? : "; cin >> a;
	
        dateOut = a+"-"+m+"-"+j;
 
	cout<<"Entrez le titre du livre :"<<endl;
	string t;
	cin.ignore();
	getline(cin,t);
	query2<<
	  "SELECT DISTINCT BookCopy.copyNo "
	      <<"FROM (BookCopy NATURAL JOIN Book) "
	      <<"LEFT JOIN BookLoan ON BookCopy.copyNo=BookLoan.copyNo "
	      <<"WHERE title=\""
	      <<t<<"\" AND ( dateOut IS NULL OR dateDue IS NULL OR "
	      <<"dateOut>'"
	      <<dateOut
	      <<"' OR dateDue<'"+dateOut
	      <<"' AND BookCopy.copyNo NOT IN ( "
              <<"SELECT BookCopy.copyNo " 
	      <<"FROM (BookCopy NATURAL JOIN Book) "
	      <<"LEFT JOIN BookLoan ON BookCopy.copyNo=BookLoan.copyNo "
	      <<"WHERE title=\""
	      <<t<<"\" AND dateOut<'"
	      <<dateOut
	      <<"' AND dateDue>'"+dateOut
	      <<"')) ORDER BY copyNo ASC"; 
        ares  =  query2.store() ; 
	if(ares.num_rows()<1){
	  cout<<"Il n'y a pas d'exemplaire disponible."<<endl;
	}
	else {
	int i;
	i=ares[0]["copyNo"];
	
	/* Now INSERT */
        query<< "INSERT INTO BookLoan VALUES ("
	     <<i
	     <<",'"
	     <<dateOut
	     <<"',DATE_ADD('"
	     <<dateOut<<"',INTERVAL 14 DAY),"
	     <<"(SELECT borrowerNo FROM Borrower WHERE borrowerName=\""+s+"\""<<"))"; 
	cout<<query<<endl;
	query.execute();}


 }   catch( BadQuery er )   {   // handle any connection or 
         // query errors that may come up 
      cerr<<"Error:"<<er.what()<<endl; 
         return; 
     }   catch(const  BadConversion &  er){ 
         // Handle bad conversions 
  cerr<<"Conversion error: "<<er.what()<<endl<<
                 " \t retrieved data size: "<<er.retrieved<< 
                 ", actual size: "<<er.actual_size<<endl; 
         return ; 
     }   catch(const  Exception &  er){ 
         // Catch-all for any other MySQL++ exceptions 
         cerr<<"Error: "<<er.what()<<endl; 
         return ; 
     } 

	  return; 
}


void empruntDate(){
try   {
        Connection conn(false);
        conn.connect("tp2_laurent_johnson","localhost","root","") ;
        Query query = conn.query();

        string dateDonnee; string j,m,a;
        cout << "Date :" << endl;
        cout << "Jour (DD) ? : "; cin >> j;
        cout << "Mois (MM) ? : "; cin >> m;
        cout << "Annee (YYYY) ? : "; cin >> a;
	
	//	stringstream sj,sm,sa;
	//sj<<j;sm<<m;sa<<a;
	//string strj = sj.str();
	//string strm = sm.str();
	//string stra = sa.str();
	
        dateDonnee = a+"-"+m+"-"+j;

	 /* Now SELECT */
        query<<"SELECT ISBN, copyNo, title, year FROM (Book NATURAL JOIN BookCopy) NATURAL JOIN BookLoan WHERE dateOut<'"+dateDonnee+"' AND dateDue>'"+dateDonnee+"'";
        StoreQueryResult ares  =  query.store() ;

	for(size_t i= 0; i<ares.num_rows();i++) {
	   cout<<"ISBN: "<<ares[i] [ "ISBN" ]<<" - numéro de copie : "<<ares[i]["copyNo"]<<" - titre : "<<ares[i]["title"]<<" - year : "<<ares[i]["year"]<<endl;
	}
	cout<<endl;
	cout<<"il y a "<<ares.num_rows()<<
	  " livres emprunté la date "<<dateDonnee<<endl<<endl;


 }   catch( BadQuery er )   {   // handle any connection or
         // query errors that may come up
      cerr<<"Error:"<<er.what()<<endl;
         return;
     }   catch(const  BadConversion &  er){
         // Handle bad conversions
  cerr<<"Conversion error: "<<er.what()<<endl<<
                 " \t retrieved data size: "<<er.retrieved<<
                 ", actual size: "<<er.actual_size<<endl;
         return ;
     }   catch(const  Exception &  er){
         // Catch-all for any other MySQL++ exceptions
         cerr<<"Error: "<<er.what()<<endl;
         return ;
     }

	  return;
}


int choixMenu(int res, int quit){
	cout << " " << endl;
	switch(res){

			//Liste des livres
			case 1:{
			  listBook();
				quit = reponse(quit);
			} break;

			// liste des abonnés
			case 2:{
			  listBorrower();
				quit = reponse(quit);
			} break;

			// rechercher un livre, puis liste des exemplaires du livre choisi
			case 3:{
			  findBook();
				quit = reponse(quit);
			} break;

			//ajouter un livre
			case 4:{
			  addBook();
				quit = reponse(quit);
			} break;

			//supprimer un livre
			case 5:{
			  deleteBook();
				quit = reponse(quit);
			} break;

			// ajouter un exemplaire
			case 6:{
			  addBookCopy();
				quit = reponse(quit);
			} break;

			// supprimer un exemplaire
			case 7:{
			  deleteBookCopy();
				quit = reponse(quit);
			} break;

			//ajouter un abonné
			case 8:{
			  addBorrower();
				quit = reponse(quit);
			} break;

			// supprimer un abonné
			case 9:{
			  deleteBorrower();
				quit = reponse(quit);
			} break;

			//ajouter un emprunt
			case 10:{
			  addBookLoan();
				quit = reponse(quit);
			} break;

			// liste des exemplaires empruntés à une date donnée
			case 11:{
			  empruntDate();
				quit = reponse(quit);
			} break;

			//quitter
			case 12:{
				quit =1;
			} break;
	}

	return quit;
	}


int main(){
	int res;
	int quit(0);

	while(quit==0){
	  menuPrincipal();
	  cout << "Que voulez-vous faire ? "; cin >> res;
	  quit = choixMenu(res,quit);
	}

	cout << " " << endl;
 	cout << "Au revoir !" << endl;
	return 0;
}
