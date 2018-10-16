.class public Lcn/nubia/weather/model/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMobileModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public getNubiaId(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const/4 v5, 0x0

    .line 53
    .local v5, "nubiaID":Ljava/lang/String;
    const-string v4, "com.ztemt"

    .line 54
    .local v4, "nubiaAccountType":Ljava/lang/String;
    const-string v6, "userId"

    .line 56
    .local v6, "nubiaUserID":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "account"

    .line 57
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AccountManager;

    .line 58
    .local v1, "accountManager":Landroid/accounts/AccountManager;
    invoke-virtual {v1, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 59
    .local v2, "accounts":[Landroid/accounts/Account;
    if-eqz v2, :cond_0

    array-length v7, v2

    if-lez v7, :cond_0

    .line 60
    const/4 v7, 0x0

    aget-object v0, v2, v7

    .line 61
    .local v0, "account":Landroid/accounts/Account;
    invoke-virtual {v1, v0, v6}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 66
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v1    # "accountManager":Landroid/accounts/AccountManager;
    .end local v2    # "accounts":[Landroid/accounts/Account;
    :cond_0
    :goto_0
    return-object v5

    .line 63
    :catch_0
    move-exception v3

    .line 64
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getRomVersion()Ljava/lang/String;
    .locals 9

    .prologue
    .line 38
    const/4 v3, 0x0

    .line 39
    .local v3, "get":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    .line 41
    .local v4, "rom":Ljava/lang/String;
    :try_start_0
    const-string v5, "android.os.SystemProperties"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 42
    .local v1, "cls":Ljava/lang/Class;
    const-string v5, "get"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 43
    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "ro.build.rom.internal.id"

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .end local v1    # "cls":Ljava/lang/Class;
    :goto_0
    return-object v4

    .line 44
    :catch_0
    move-exception v2

    .line 45
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getVerName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    const-string v0, ""

    .line 21
    .local v0, "appVersionName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 23
    .local v3, "manager":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 24
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v0

    .line 25
    :catch_0
    move-exception v1

    .line 26
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public hasSimCard(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 71
    .local v2, "telManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    .line 72
    .local v1, "simState":I
    const/4 v0, 0x0

    .line 73
    .local v0, "result":Z
    packed-switch v1, :pswitch_data_0

    .line 80
    :goto_0
    return v0

    .line 75
    :pswitch_0
    const/4 v0, 0x1

    .line 76
    goto :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
