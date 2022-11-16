namespace WebTimeSheetManagement.Concrete.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class InitialCreate : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.AssignedRoles",
                c => new
                    {
                        AssignedRolesID = c.Int(nullable: false, identity: true),
                        AssignToAdmin = c.Int(),
                        CreatedBy = c.Int(),
                        CreatedOn = c.DateTime(),
                        RegistrationID = c.Int(nullable: false),
                        Status = c.String(),
                    })
                .PrimaryKey(t => t.AssignedRolesID);
            
            CreateTable(
                "dbo.AuditTB",
                c => new
                    {
                        AuditID = c.Int(nullable: false, identity: true),
                        UserID = c.String(),
                        SessionID = c.String(),
                        IPAddress = c.String(),
                        PageAccessed = c.String(),
                        LoggedInAt = c.DateTime(),
                        LoggedOutAt = c.DateTime(),
                        LoginStatus = c.String(),
                        ControllerName = c.String(),
                        ActionName = c.String(),
                        UrlReferrer = c.String(),
                    })
                .PrimaryKey(t => t.AuditID);
            
            CreateTable(
                "dbo.DescriptionTB",
                c => new
                    {
                        DescriptionID = c.Int(nullable: false, identity: true),
                        Description = c.String(),
                        ProjectID = c.Int(),
                        TimeSheetMasterID = c.Int(),
                        CreatedOn = c.DateTime(),
                        UserID = c.Int(),
                    })
                .PrimaryKey(t => t.DescriptionID);
            
            CreateTable(
                "dbo.Documents",
                c => new
                    {
                        DocumentID = c.Int(nullable: false, identity: true),
                        DocumentName = c.String(),
                        DocumentBytes = c.Binary(),
                        UserID = c.Int(nullable: false),
                        CreatedOn = c.DateTime(nullable: false),
                        ExpenseID = c.Int(nullable: false),
                        DocumentType = c.String(),
                    })
                .PrimaryKey(t => t.DocumentID);
            
            CreateTable(
                "dbo.ExpenseAuditTB",
                c => new
                    {
                        ApprovaExpenselLogID = c.Int(nullable: false, identity: true),
                        ApprovalUser = c.Int(nullable: false),
                        ProcessedDate = c.DateTime(),
                        CreatedOn = c.DateTime(),
                        Comment = c.String(),
                        Status = c.Int(nullable: false),
                        ExpenseID = c.Int(nullable: false),
                        UserID = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.ApprovaExpenselLogID);
            
            CreateTable(
                "dbo.Expense",
                c => new
                    {
                        ExpenseID = c.Int(nullable: false, identity: true),
                        ProjectID = c.Int(nullable: false),
                        PurposeorReason = c.String(nullable: false),
                        ExpenseStatus = c.Int(nullable: false),
                        FromDate = c.DateTime(nullable: false),
                        ToDate = c.DateTime(nullable: false),
                        UserID = c.Int(nullable: false),
                        CreatedOn = c.DateTime(),
                        VoucherID = c.String(),
                        HotelBills = c.Int(),
                        TravelBills = c.Int(),
                        MealsBills = c.Int(),
                        LandLineBills = c.Int(),
                        TransportBills = c.Int(),
                        MobileBills = c.Int(),
                        Miscellaneous = c.Int(),
                        TotalAmount = c.Int(),
                        Comment = c.String(),
                    })
                .PrimaryKey(t => t.ExpenseID);
            
            CreateTable(
                "dbo.NotificationsTB",
                c => new
                    {
                        NotificationsID = c.Int(nullable: false, identity: true),
                        Status = c.String(),
                        Message = c.String(nullable: false),
                        CreatedOn = c.DateTime(),
                        FromDate = c.DateTime(nullable: false),
                        ToDate = c.DateTime(nullable: false),
                    })
                .PrimaryKey(t => t.NotificationsID);
            
            CreateTable(
                "dbo.ProjectMaster",
                c => new
                    {
                        ProjectID = c.Int(nullable: false, identity: true),
                        ProjectCode = c.String(nullable: false),
                        NatureofIndustry = c.String(nullable: false),
                        ProjectName = c.String(nullable: false),
                    })
                .PrimaryKey(t => t.ProjectID);
            
            CreateTable(
                "dbo.Registration",
                c => new
                    {
                        RegistrationID = c.Int(nullable: false, identity: true),
                        Name = c.String(nullable: false),
                        Mobileno = c.String(nullable: false),
                        EmailID = c.String(nullable: false),
                        Username = c.String(nullable: false),
                        Password = c.String(nullable: false),
                        ConfirmPassword = c.String(),
                        Gender = c.String(nullable: false),
                        Birthdate = c.DateTime(),
                        DateofJoining = c.DateTime(),
                        RoleID = c.Int(),
                        EmployeeID = c.String(maxLength: 5),
                        CreatedOn = c.DateTime(),
                        ForceChangePassword = c.Int(),
                    })
                .PrimaryKey(t => t.RegistrationID);
            
            CreateTable(
                "dbo.Roles",
                c => new
                    {
                        RoleID = c.Int(nullable: false, identity: true),
                        Rolename = c.String(),
                    })
                .PrimaryKey(t => t.RoleID);
            
            CreateTable(
                "dbo.TimeSheetAuditTB",
                c => new
                    {
                        ApprovalTimeSheetLogID = c.Int(nullable: false, identity: true),
                        ApprovalUser = c.Int(nullable: false),
                        ProcessedDate = c.DateTime(),
                        CreatedOn = c.DateTime(),
                        Comment = c.String(),
                        Status = c.Int(nullable: false),
                        TimeSheetID = c.Int(nullable: false),
                        UserID = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.ApprovalTimeSheetLogID);
            
            CreateTable(
                "dbo.TimeSheetDetails",
                c => new
                    {
                        TimeSheetID = c.Int(nullable: false, identity: true),
                        DaysofWeek = c.String(),
                        Hours = c.Int(),
                        Period = c.DateTime(),
                        ProjectID = c.Int(),
                        UserID = c.Int(nullable: false),
                        CreatedOn = c.DateTime(),
                        TimeSheetMasterID = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.TimeSheetID);
            
            CreateTable(
                "dbo.TimeSheetMaster",
                c => new
                    {
                        TimeSheetMasterID = c.Int(nullable: false, identity: true),
                        FromDate = c.DateTime(),
                        ToDate = c.DateTime(),
                        TotalHours = c.Int(),
                        UserID = c.Int(nullable: false),
                        CreatedOn = c.DateTime(),
                        TimeSheetStatus = c.Int(nullable: false),
                        Comment = c.String(),
                    })
                .PrimaryKey(t => t.TimeSheetMasterID);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.TimeSheetMaster");
            DropTable("dbo.TimeSheetDetails");
            DropTable("dbo.TimeSheetAuditTB");
            DropTable("dbo.Roles");
            DropTable("dbo.Registration");
            DropTable("dbo.ProjectMaster");
            DropTable("dbo.NotificationsTB");
            DropTable("dbo.Expense");
            DropTable("dbo.ExpenseAuditTB");
            DropTable("dbo.Documents");
            DropTable("dbo.DescriptionTB");
            DropTable("dbo.AuditTB");
            DropTable("dbo.AssignedRoles");
        }
    }
}
