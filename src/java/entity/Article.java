package entity;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Objects;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Article implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(unique = true)
    private String mark;
    private String model;
    private String carbody;
    private String firstReg;
    private String carCondition;
    private String regNumber;
    private String purchaseDate;
    private String passport;
    private String color;
    private Long run;
    private String driveUnit;
    private Float engineVolume;
    private String engineType;
    private Long enginePower;
    private Long dryMass;
    private Long fullMass;
    private Long tank;
    private String gear;
    private String grip;
    private Float fuelRate;
    private Integer seats;
    private Integer doors;
    private Float price;
    private String checkTime;
    private String moreInfo;
    private String userLogin;
    @Temporal(TemporalType.TIMESTAMP)
    private Date date;
    @OneToMany(cascade = {CascadeType.MERGE, CascadeType.PERSIST, CascadeType.REMOVE}, orphanRemoval = true)
    private List<Comment> comments;

    public Article() {
    }

    public Article(String mark, String model, String carbody, String firstReg, String carCondition, String regNumber, String purchaseDate, String passport, String color, Long run, String driveUnit, Float engineVolume, String engineType, Long enginePower, Long dryMass, Long fullMass, Long tank, String gear, String grip, Float fuelRate, Integer seats, Integer doors, Float price, String checkTime, String moreInfo, String userLogin, Date date) {

        this.mark = mark;
        this.model = model;
        this.carbody = carbody;
        this.firstReg = firstReg;
        this.carCondition = carCondition;
        this.regNumber = regNumber;
        this.purchaseDate = purchaseDate;
        this.passport = passport;
        this.color = color;
        this.run = run;
        this.driveUnit = driveUnit;
        this.engineVolume = engineVolume;
        this.engineType = engineType;
        this.enginePower = enginePower;
        this.dryMass = dryMass;
        this.fullMass = fullMass;
        this.tank = tank;
        this.gear = gear;
        this.grip = grip;
        this.fuelRate = fuelRate;
        this.seats = seats;
        this.doors = doors;
        this.price = price;
        this.checkTime = checkTime;
        this.moreInfo = moreInfo;
        this.userLogin = userLogin;
        this.date = date;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getMark() {
        return mark;
    }

    public void setMark(String mark) {
        this.mark = mark;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getCarbody() {
        return carbody;
    }

    public void setCarbody(String carbody) {
        this.carbody = carbody;
    }

    public String getFirstReg() {
        return firstReg;
    }

    public void setFirstReg(String firstReg) {
        this.firstReg = firstReg;
    }

    public String getCarCondition() {
        return carCondition;
    }

    public void setCarCondition(String carCondition) {
        this.carCondition = carCondition;
    }

    public String getRegNumber() {
        return regNumber;
    }

    public void setRegNumber(String regNumber) {
        this.regNumber = regNumber;
    }

    public String getPurchaseDate() {
        return purchaseDate;
    }

    public void setPurchaseDate(String purchaseDate) {
        this.purchaseDate = purchaseDate;
    }

    public String getPassport() {
        return passport;
    }

    public void setPassport(String passport) {
        this.passport = passport;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public Long getRun() {
        return run;
    }

    public void setRun(Long run) {
        this.run = run;
    }

    public String getDriveUnit() {
        return driveUnit;
    }

    public void setDriveUnit(String driveUnit) {
        this.driveUnit = driveUnit;
    }

    public Float getEngineVolume() {
        return engineVolume;
    }

    public void setEngineVolume(Float engineVolume) {
        this.engineVolume = engineVolume;
    }

    public String getEngineType() {
        return engineType;
    }

    public void setEngineType(String engineType) {
        this.engineType = engineType;
    }

    public Long getEnginePower() {
        return enginePower;
    }

    public void setEnginePower(Long enginePower) {
        this.enginePower = enginePower;
    }

    public Long getDryMass() {
        return dryMass;
    }

    public void setDryMass(Long dryMass) {
        this.dryMass = dryMass;
    }

    public Long getFullMass() {
        return fullMass;
    }

    public void setFullMass(Long fullMass) {
        this.fullMass = fullMass;
    }

    public Long getTank() {
        return tank;
    }

    public void setTank(Long tank) {
        this.tank = tank;
    }

    public String getGear() {
        return gear;
    }

    public void setGear(String gear) {
        this.gear = gear;
    }

    public String getGrip() {
        return grip;
    }

    public void setGrip(String grip) {
        this.grip = grip;
    }

    public Float getFuelRate() {
        return fuelRate;
    }

    public void setFuelRate(Float fuelRate) {
        this.fuelRate = fuelRate;
    }

    public Integer getSeats() {
        return seats;
    }

    public void setSeats(Integer seats) {
        this.seats = seats;
    }

    public Integer getDoors() {
        return doors;
    }

    public void setDoors(Integer doors) {
        this.doors = doors;
    }

    public Float getPrice() {
        return price;
    }

    public void setPrice(Float price) {
        this.price = price;
    }

    public String getCheckTime() {
        return checkTime;
    }

    public void setCheckTime(String checkTime) {
        this.checkTime = checkTime;
    }

    public String getMoreInfo() {
        return moreInfo;
    }

    public void setMoreInfo(String moreInfo) {
        this.moreInfo = moreInfo;
    }

    public String getUserLogin() {
        return userLogin;
    }

    public void setUserLogin(String userLogin) {
        this.userLogin = userLogin;
    }

    public String getDate() {
        SimpleDateFormat dateFormat = new SimpleDateFormat("dd.MM.y h:m");
        return dateFormat.format(date);
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public List<Comment> getComments() {
        return comments;
    }

    public void setComments(List<Comment> comments) {
        this.comments = comments;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 13 * hash + Objects.hashCode(this.id);
        hash = 13 * hash + Objects.hashCode(this.mark);
        hash = 13 * hash + Objects.hashCode(this.model);
        hash = 13 * hash + Objects.hashCode(this.carbody);
        hash = 13 * hash + Objects.hashCode(this.firstReg);
        hash = 13 * hash + Objects.hashCode(this.carCondition);
        hash = 13 * hash + Objects.hashCode(this.regNumber);
        hash = 13 * hash + Objects.hashCode(this.purchaseDate);
        hash = 13 * hash + Objects.hashCode(this.passport);
        hash = 13 * hash + Objects.hashCode(this.color);
        hash = 13 * hash + Objects.hashCode(this.run);
        hash = 13 * hash + Objects.hashCode(this.driveUnit);
        hash = 13 * hash + Objects.hashCode(this.engineVolume);
        hash = 13 * hash + Objects.hashCode(this.engineType);
        hash = 13 * hash + Objects.hashCode(this.enginePower);
        hash = 13 * hash + Objects.hashCode(this.dryMass);
        hash = 13 * hash + Objects.hashCode(this.fullMass);
        hash = 13 * hash + Objects.hashCode(this.tank);
        hash = 13 * hash + Objects.hashCode(this.gear);
        hash = 13 * hash + Objects.hashCode(this.grip);
        hash = 13 * hash + Objects.hashCode(this.fuelRate);
        hash = 13 * hash + Objects.hashCode(this.seats);
        hash = 13 * hash + Objects.hashCode(this.doors);
        hash = 13 * hash + Objects.hashCode(this.price);
        hash = 13 * hash + Objects.hashCode(this.checkTime);
        hash = 13 * hash + Objects.hashCode(this.moreInfo);
        hash = 13 * hash + Objects.hashCode(this.userLogin);
        hash = 13 * hash + Objects.hashCode(this.date);
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Article other = (Article) obj;
        if (!Objects.equals(this.mark, other.mark)) {
            return false;
        }
        if (!Objects.equals(this.model, other.model)) {
            return false;
        }
        if (!Objects.equals(this.carbody, other.carbody)) {
            return false;
        }
        if (!Objects.equals(this.firstReg, other.firstReg)) {
            return false;
        }
        if (!Objects.equals(this.carCondition, other.carCondition)) {
            return false;
        }
        if (!Objects.equals(this.regNumber, other.regNumber)) {
            return false;
        }
        if (!Objects.equals(this.purchaseDate, other.purchaseDate)) {
            return false;
        }
        if (!Objects.equals(this.passport, other.passport)) {
            return false;
        }
        if (!Objects.equals(this.color, other.color)) {
            return false;
        }
        if (!Objects.equals(this.driveUnit, other.driveUnit)) {
            return false;
        }
        if (!Objects.equals(this.gear, other.gear)) {
            return false;
        }
        if (!Objects.equals(this.grip, other.grip)) {
            return false;
        }
        if (!Objects.equals(this.checkTime, other.checkTime)) {
            return false;
        }
        if (!Objects.equals(this.moreInfo, other.moreInfo)) {
            return false;
        }
        if (!Objects.equals(this.userLogin, other.userLogin)) {
            return false;
        }
        if (!Objects.equals(this.id, other.id)) {
            return false;
        }
        if (!Objects.equals(this.run, other.run)) {
            return false;
        }
        if (!Objects.equals(this.engineVolume, other.engineVolume)) {
            return false;
        }
        if (!Objects.equals(this.engineType, other.engineType)) {
            return false;
        }
        if (!Objects.equals(this.enginePower, other.enginePower)) {
            return false;
        }
        if (!Objects.equals(this.dryMass, other.dryMass)) {
            return false;
        }
        if (!Objects.equals(this.fullMass, other.fullMass)) {
            return false;
        }
        if (!Objects.equals(this.tank, other.tank)) {
            return false;
        }
        if (!Objects.equals(this.fuelRate, other.fuelRate)) {
            return false;
        }
        if (!Objects.equals(this.seats, other.seats)) {
            return false;
        }
        if (!Objects.equals(this.doors, other.doors)) {
            return false;
        }
        if (!Objects.equals(this.price, other.price)) {
            return false;
        }
        if (!Objects.equals(this.date, other.date)) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Article{" + "id=" + id + ", mark=" + mark + ", model=" + model + ", carbody=" + carbody + ", userLogin=" + userLogin + ", date=" + date + '}';
    }

}
