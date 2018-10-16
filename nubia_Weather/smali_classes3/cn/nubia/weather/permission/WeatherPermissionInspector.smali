.class public Lcn/nubia/weather/permission/WeatherPermissionInspector;
.super Ljava/lang/Object;
.source "WeatherPermissionInspector.java"


# static fields
.field public static final IS_FIRST_LAUNCH:Ljava/lang/String; = "isFirstLaunch"

.field public static final REQUSET_PERMISSOM_ALL:I = 0xc


# instance fields
.field private mAlerDialog:Lcn/nubia/commonui/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/weather/permission/WeatherPermissionInspector;->mAlerDialog:Lcn/nubia/commonui/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/weather/permission/WeatherPermissionInspector;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/permission/WeatherPermissionInspector;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcn/nubia/weather/permission/WeatherPermissionInspector;->startPermisionSettingActicity(Landroid/content/Context;)V

    return-void
.end method

.method private shouldShowWarningDialog(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 142
    const/4 v1, 0x0

    .line 143
    .local v1, "requestPermissionRationale":Z
    array-length v4, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, p2, v3

    .local v0, "permission":Ljava/lang/String;
    move-object v2, p1

    .line 144
    check-cast v2, Landroid/app/Activity;

    .line 145
    invoke-static {v2, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 143
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 149
    .end local v0    # "permission":Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    .line 150
    invoke-direct {p0, p1}, Lcn/nubia/weather/permission/WeatherPermissionInspector;->showWarmingDialog(Landroid/content/Context;)V

    .line 153
    :cond_1
    return v1
.end method

.method private showWarmingDialog(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v7, 0x7f0f0092

    const v6, 0x7f0f0091

    const/4 v5, 0x0

    .line 72
    if-nez p1, :cond_0

    .line 120
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/weather/permission/WeatherPermissionInspector;->hideDialog()V

    .line 76
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03001d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 78
    .local v1, "view":Landroid/view/View;
    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p1, v2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 82
    :cond_1
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p1, v2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 84
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 86
    :cond_2
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p1, v2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 88
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 90
    :cond_3
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p1, v2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_4

    .line 92
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 94
    :cond_4
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {p1, v2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_5

    .line 96
    const v2, 0x7f0f0093

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 98
    :cond_5
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 99
    .local v0, "dialogBuild":Lcn/nubia/commonui/app/AlertDialog$Builder;
    invoke-virtual {v0, v5}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setCancelable(Z)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 100
    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 101
    const v2, 0x7f090139

    new-instance v3, Lcn/nubia/weather/permission/WeatherPermissionInspector$1;

    invoke-direct {v3, p0, p1}, Lcn/nubia/weather/permission/WeatherPermissionInspector$1;-><init>(Lcn/nubia/weather/permission/WeatherPermissionInspector;Landroid/content/Context;)V

    invoke-virtual {v0, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 110
    const v2, 0x7f090138

    new-instance v3, Lcn/nubia/weather/permission/WeatherPermissionInspector$2;

    invoke-direct {v3, p0, p1}, Lcn/nubia/weather/permission/WeatherPermissionInspector$2;-><init>(Lcn/nubia/weather/permission/WeatherPermissionInspector;Landroid/content/Context;)V

    invoke-virtual {v0, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 118
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/weather/permission/WeatherPermissionInspector;->mAlerDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 119
    iget-object v2, p0, Lcn/nubia/weather/permission/WeatherPermissionInspector;->mAlerDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v2}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method private startPermisionSettingActicity(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 130
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 132
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 133
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 135
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public hideDialog()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcn/nubia/weather/permission/WeatherPermissionInspector;->mAlerDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/weather/permission/WeatherPermissionInspector;->mAlerDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcn/nubia/weather/permission/WeatherPermissionInspector;->mAlerDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/weather/permission/WeatherPermissionInspector;->mAlerDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 127
    :cond_0
    return-void
.end method

.method public isFirstLaunch(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    .line 64
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 65
    .local v1, "sharedPref":Landroid/content/SharedPreferences;
    const-string v2, "isFirstLaunch"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 67
    .local v0, "isFirstLaunch":Z
    return v0
.end method

.method public isPerssionGranted(Landroid/content/Context;[Ljava/lang/String;I)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "requestCode"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 34
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v3, v6, :cond_6

    .line 35
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    instance-of v3, p1, Landroid/app/Activity;

    if-nez v3, :cond_1

    .line 59
    .end local p1    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return v5

    .line 38
    .restart local p1    # "context":Landroid/content/Context;
    :cond_1
    const/4 v0, 0x1

    .line 39
    .local v0, "checkPermissionsResult":Z
    const/4 v2, 0x0

    .line 41
    .local v2, "requestPermissionRationale":Z
    array-length v7, p2

    move v6, v5

    :goto_1
    if-ge v6, v7, :cond_3

    aget-object v1, p2, v6

    .line 42
    .local v1, "permission":Ljava/lang/String;
    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    move v3, v4

    :goto_2
    and-int/2addr v0, v3

    move-object v3, p1

    .line 44
    check-cast v3, Landroid/app/Activity;

    .line 45
    invoke-static {v3, v1}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 41
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_1

    :cond_2
    move v3, v5

    .line 42
    goto :goto_2

    .line 48
    .end local v1    # "permission":Ljava/lang/String;
    :cond_3
    if-eqz v0, :cond_4

    move v5, v0

    .line 49
    goto :goto_0

    .line 51
    :cond_4
    invoke-virtual {p0, p1}, Lcn/nubia/weather/permission/WeatherPermissionInspector;->isFirstLaunch(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_5

    if-nez v2, :cond_5

    .line 52
    invoke-direct {p0, p1}, Lcn/nubia/weather/permission/WeatherPermissionInspector;->showWarmingDialog(Landroid/content/Context;)V

    goto :goto_0

    .line 54
    :cond_5
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    const/16 v3, 0xc

    invoke-static {p1, p2, v3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .end local v0    # "checkPermissionsResult":Z
    .end local v2    # "requestPermissionRationale":Z
    .restart local p1    # "context":Landroid/content/Context;
    :cond_6
    move v5, v4

    .line 59
    goto :goto_0
.end method
