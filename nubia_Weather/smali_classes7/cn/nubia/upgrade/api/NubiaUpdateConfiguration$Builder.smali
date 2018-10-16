.class public Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
.super Ljava/lang/Object;
.source "NubiaUpdateConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public mAllowMobileNetwork:Z

.field public mAppName:Ljava/lang/String;

.field public mDownLoadStorageLimit:J

.field public mDownloadPath:Ljava/lang/String;

.field public mIconId:I

.field public mNotificationContent:Ljava/lang/String;

.field public mNotificationTitle:Ljava/lang/String;

.field public mNotificationUpdateOffset:J

.field public mPackageName:Ljava/lang/String;

.field public mShowNotification:Z

.field public mSlientDownload:Z

.field public mSlientInstall:Z

.field public mVersionCode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-boolean v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mSlientInstall:Z

    .line 72
    iput-boolean v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mSlientDownload:Z

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mShowNotification:Z

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mIconId:I

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mNotificationContent:Ljava/lang/String;

    .line 82
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mDownLoadStorageLimit:J

    .line 83
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mNotificationUpdateOffset:J

    return-void
.end method

.method public static getConfiguration(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;
    .locals 4
    .param p0, "builder"    # Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    .prologue
    .line 181
    new-instance v0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-direct {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;-><init>()V

    .line 182
    .local v0, "configuration":Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;
    iget-boolean v1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mSlientInstall:Z

    invoke-static {v0, v1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->access$002(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;Z)Z

    .line 183
    iget-boolean v1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mSlientDownload:Z

    invoke-static {v0, v1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->access$102(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;Z)Z

    .line 184
    iget-boolean v1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mShowNotification:Z

    invoke-static {v0, v1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->access$202(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;Z)Z

    .line 185
    iget-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mAppName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->access$302(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;Ljava/lang/String;)Ljava/lang/String;

    .line 186
    iget v1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mIconId:I

    invoke-static {v0, v1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->access$402(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;I)I

    .line 187
    iget-boolean v1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mAllowMobileNetwork:Z

    invoke-static {v0, v1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->access$502(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;Z)Z

    .line 188
    iget-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mNotificationTitle:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->access$602(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;Ljava/lang/String;)Ljava/lang/String;

    .line 189
    iget-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mDownloadPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->access$702(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;Ljava/lang/String;)Ljava/lang/String;

    .line 190
    iget-wide v2, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mDownLoadStorageLimit:J

    invoke-static {v0, v2, v3}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->access$802(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;J)J

    .line 191
    iget-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mNotificationContent:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->access$902(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;Ljava/lang/String;)Ljava/lang/String;

    .line 192
    iget-wide v2, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mNotificationUpdateOffset:J

    invoke-static {v0, v2, v3}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->access$1002(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;J)J

    .line 193
    return-object v0
.end method


# virtual methods
.method public setAllowMobileNetwork(Z)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
    .locals 0
    .param p1, "allow"    # Z

    .prologue
    .line 132
    iput-boolean p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mAllowMobileNetwork:Z

    .line 133
    return-object p0
.end method

.method public setAppName(Ljava/lang/String;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mAppName:Ljava/lang/String;

    .line 118
    return-object p0
.end method

.method public setDownloadPath(Ljava/lang/String;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
    .locals 0
    .param p1, "downloadPath"    # Ljava/lang/String;

    .prologue
    .line 164
    iput-object p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mDownloadPath:Ljava/lang/String;

    .line 165
    return-object p0
.end method

.method public setIcon(I)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 127
    iput p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mIconId:I

    .line 128
    return-object p0
.end method

.method public setNotificationContent(Ljava/lang/String;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
    .locals 0
    .param p1, "notificationContent"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mNotificationContent:Ljava/lang/String;

    .line 152
    return-object p0
.end method

.method public setNotificationTitle(Ljava/lang/String;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mNotificationTitle:Ljava/lang/String;

    .line 142
    return-object p0
.end method

.method public setNotificationUpdateOffset(J)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
    .locals 1
    .param p1, "timeOffset"    # J

    .prologue
    .line 160
    iput-wide p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mNotificationUpdateOffset:J

    .line 161
    return-object p0
.end method

.method public setShowNotification(Z)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
    .locals 0
    .param p1, "showNotification"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mShowNotification:Z

    .line 99
    return-object p0
.end method

.method public setSlientDownload(Z)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
    .locals 0
    .param p1, "slientDownload"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mSlientDownload:Z

    .line 112
    return-object p0
.end method

.method public setSlientInstall(Z)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
    .locals 0
    .param p1, "slientInstall"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mSlientInstall:Z

    .line 88
    return-object p0
.end method

.method public setStorageLimit(J)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
    .locals 1
    .param p1, "limitSize"    # J

    .prologue
    .line 176
    iput-wide p1, p0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mDownLoadStorageLimit:J

    .line 177
    return-object p0
.end method
