import java.io.Serializable;
import java.sql.Date;
@Entity
@Table(name="Users")
@EntityListeners(AuditingEntityListener.class)
public class Users implements Serializable {
    private int idUser;
    private String lastname;
    private String firstname;
    private Date datenaissance;
    private String email;
    private String password;
    private boolean firstconnection;
    private char sexe;
    private boolean admin;


    public Users() {
    }

    public Users(int idUser, String lastname, String firstname, Date datenaissance, String email, String password, boolean firstconnection, char sexe, boolean admin) {
        this.idUser = idUser;
        this.lastname = lastname;
        this.firstname = firstname;
        this.datenaissance = datenaissance;
        this.email = email;
        this.password = password;
        this.firstconnection = firstconnection;
        this.sexe = sexe;
        this.admin = admin;
    }

    public int getIdUser() {
        return this.idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }

    public String getLastname() {
        return this.lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getFirstname() {
        return this.firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public Date getDatenaissance() {
        return this.datenaissance;
    }

    public void setDatenaissance(Date datenaissance) {
        this.datenaissance = datenaissance;
    }

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return this.password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isFirstconnection() {
        return this.firstconnection;
    }

    public boolean getFirstconnection() {
        return this.firstconnection;
    }

    public void setFirstconnection(boolean firstconnection) {
        this.firstconnection = firstconnection;
    }

    public char getSexe() {
        return this.sexe;
    }

    public void setSexe(char sexe) {
        this.sexe = sexe;
    }

    public boolean isAdmin() {
        return this.admin;
    }

    public boolean getAdmin() {
        return this.admin;
    }

    public void setAdmin(boolean admin) {
        this.admin = admin;
    }

    public Users idUser(int idUser) {
        this.idUser = idUser;
        return this;
    }

    public Users lastname(String lastname) {
        this.lastname = lastname;
        return this;
    }

    public Users firstname(String firstname) {
        this.firstname = firstname;
        return this;
    }

    public Users datenaissance(Date datenaissance) {
        this.datenaissance = datenaissance;
        return this;
    }

    public Users email(String email) {
        this.email = email;
        return this;
    }

    public Users password(String password) {
        this.password = password;
        return this;
    }

    public Users firstconnection(boolean firstconnection) {
        this.firstconnection = firstconnection;
        return this;
    }

    public Users sexe(char sexe) {
        this.sexe = sexe;
        return this;
    }

    public Users admin(boolean admin) {
        this.admin = admin;
        return this;
    }

    @Override
    public boolean equals(Object o) {
        if (o == this)
            return true;
        if (!(o instanceof Users)) {
            return false;
        }
        Users users = (Users) o;
        return idUser == users.idUser && Objects.equals(lastname, users.lastname) && Objects.equals(firstname, users.firstname) && Objects.equals(datenaissance, users.datenaissance) && Objects.equals(email, users.email) && Objects.equals(password, users.password) && firstconnection == users.firstconnection && sexe == users.sexe && admin == users.admin;
    }

    @Override
    public int hashCode() {
        return Objects.hash(idUser, lastname, firstname, datenaissance, email, password, firstconnection, sexe, admin);
    }

    @Override
    public String toString() {
        return "{" +
            " idUser='" + getIdUser() + "'" +
            ", lastname='" + getLastname() + "'" +
            ", firstname='" + getFirstname() + "'" +
            ", datenaissance='" + getDatenaissance() + "'" +
            ", email='" + getEmail() + "'" +
            ", password='" + getPassword() + "'" +
            ", firstconnection='" + isFirstconnection() + "'" +
            ", sexe='" + getSexe() + "'" +
            ", admin='" + isAdmin() + "'" +
            "}";
    }

    




}