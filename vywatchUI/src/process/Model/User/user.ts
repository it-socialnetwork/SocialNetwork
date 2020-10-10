export class User
{
    sexe : String;
    lastname : String;
    firstname : String;
    dateBirth : String;
    email : String;
    password : String;
    pseudo : String;
    pictureprofil : Blob;
    public User( lastname:String, firstname : String, dateBirth : String, email : String, password : String)
    {
        this.email=email;
        this.password=password;
        this.dateBirth=dateBirth;
        this.lastname=lastname;
        this.firstname=firstname;
    }
}