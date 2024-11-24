package UserAdmin;


import java.sql.Date;

public class reportsclass {
    private int reportId;
    private Date date;
    private int newCustomersCount;
    private int newAgentsCount;
    private int newUsersCount;
    private int currentUsersCount;
    private int totalUsersCount;
    private int adminId;

    // Default Constructor
    public reportsclass() {
    }

    public reportsclass(int reportId, Date date, int newCustomersCount, int newAgentsCount, 
                  int newUsersCount, int currentUsersCount, int totalUsersCount, int adminId) {
        this.reportId = reportId;
        this.date = date;
        this.newCustomersCount = newCustomersCount;
        this.newAgentsCount = newAgentsCount;
        this.newUsersCount = newUsersCount;
        this.currentUsersCount = currentUsersCount;
        this.totalUsersCount = totalUsersCount;
        this.adminId = adminId;
    }

    // Getters and Setters

    public int getReportId() {
        return reportId;
    }

    public void setReportId(int reportId) {
        this.reportId = reportId;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getNewCustomersCount() {
        return newCustomersCount;
    }

    public void setNewCustomersCount(int newCustomersCount) {
        this.newCustomersCount = newCustomersCount;
    }

    public int getNewAgentsCount() {
        return newAgentsCount;
    }

    public void setNewAgentsCount(int newAgentsCount) {
        this.newAgentsCount = newAgentsCount;
    }

    public int getNewUsersCount() {
        return newUsersCount;
    }

    public void setNewUsersCount(int newUsersCount) {
        this.newUsersCount = newUsersCount;
    }

    public int getCurrentUsersCount() {
        return currentUsersCount;
    }

    public void setCurrentUsersCount(int currentUsersCount) {
        this.currentUsersCount = currentUsersCount;
    }

    public int getTotalUsersCount() {
        return totalUsersCount;
    }

    public void setTotalUsersCount(int totalUsersCount) {
        this.totalUsersCount = totalUsersCount;
    }

    public int getAdminId() {
        return adminId;
    }

    public void setAdminId(int adminId) {
        this.adminId = adminId;
    }
}
