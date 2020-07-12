import java.io.Serializable;

@Entity
@Table(name="userSubject")
@EntityListeners(AuditingEntityListener.class)
public class UserSubject implements Serializable {
    private int idListSub;
    private int idUser;

    public UserSubject() {
    }

    public UserSubject(int idListSub, int idUser) {
        this.idListSub = idListSub;
        this.idUser = idUser;
    }

    public int getIdListSub() {
        return this.idListSub;
    }

    public void setIdListSub(int idListSub) {
        this.idListSub = idListSub;
    }

    public int getIdUser() {
        return this.idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }

    public UserSubject idListSub(int idListSub) {
        this.idListSub = idListSub;
        return this;
    }

    public UserSubject idUser(int idUser) {
        this.idUser = idUser;
        return this;
    }

    @Override
    public boolean equals(Object o) {
        if (o == this)
            return true;
        if (!(o instanceof UserSubject)) {
            return false;
        }
        UserSubject userSubject = (UserSubject) o;
        return idListSub == userSubject.idListSub && idUser == userSubject.idUser;
    }

    @Override
    public int hashCode() {
        return Objects.hash(idListSub, idUser);
    }

    @Override
    public String toString() {
        return "{" +
            " idListSub='" + getIdListSub() + "'" +
            ", idUser='" + getIdUser() + "'" +
            "}";
    }

}