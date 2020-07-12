import java.io.Serializable;
import java.sql.Date;
@Entity
@Table(name="Users")
@EntityListeners(AuditingEntityListener.class)
public class ListSubject implements Serializable{
    private int idListSub;
    private String nameSubject;

    public ListSubject() {
    }

    public ListSubject(int idListSub, String nameSubject) {
        this.idListSub = idListSub;
        this.nameSubject = nameSubject;
    }

    public int getIdListSub() {
        return this.idListSub;
    }

    public void setIdListSub(int idListSub) {
        this.idListSub = idListSub;
    }

    public String getNameSubject() {
        return this.nameSubject;
    }

    public void setNameSubject(String nameSubject) {
        this.nameSubject = nameSubject;
    }

    public ListSubject idListSub(int idListSub) {
        this.idListSub = idListSub;
        return this;
    }

    public ListSubject nameSubject(String nameSubject) {
        this.nameSubject = nameSubject;
        return this;
    }

    @Override
    public boolean equals(Object o) {
        if (o == this)
            return true;
        if (!(o instanceof ListSubject)) {
            return false;
        }
        ListSubject listSubject = (ListSubject) o;
        return idListSub == listSubject.idListSub && Objects.equals(nameSubject, listSubject.nameSubject);
    }

    @Override
    public int hashCode() {
        return Objects.hash(idListSub, nameSubject);
    }

    @Override
    public String toString() {
        return "{" +
            " idListSub='" + getIdListSub() + "'" +
            ", nameSubject='" + getNameSubject() + "'" +
            "}";
    }

}