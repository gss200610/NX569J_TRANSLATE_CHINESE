.class public Lcn/nubia/upgrade/util/ReportUtils;
.super Ljava/lang/Object;
.source "ReportUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/upgrade/util/ReportUtils$ReportStatus;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcn/nubia/upgrade/util/ReportUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/upgrade/util/ReportUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-static/range {p0 .. p7}, Lcn/nubia/upgrade/util/ReportUtils;->selfReport(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static report(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "authID"    # Ljava/lang/String;
    .param p2, "authKey"    # Ljava/lang/String;
    .param p3, "preVersion"    # I
    .param p4, "newVersion"    # I
    .param p5, "status"    # I

    .prologue
    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {p0, v1}, Lcn/nubia/upgrade/util/InfoCollect;->getUniqueKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 35
    .local v2, "uniqueKey":Ljava/lang/String;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 36
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p0}, Lcn/nubia/upgrade/util/InfoCollect;->getPhoneParameter(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 37
    const-string v3, "upgrade_type"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v3, "from_version_code"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v3, "version_code"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v3, "from_version_name"

    invoke-static {p0}, Lcn/nubia/upgrade/util/InfoCollect;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 43
    const-string v3, "unique_key"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_0
    const-string v3, "package_name"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v3, "upgrade_status"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v3, Lcn/nubia/upgrade/util/ReportUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "report uniquekey:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0, v1}, Lcn/nubia/upgrade/util/InfoCollect;->getUniqueKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " status:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/upgrade/util/Ulog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lcn/nubia/upgrade/util/WorkQueue;->getInstance()Lcn/nubia/upgrade/util/WorkQueue;

    move-result-object v3

    new-instance v4, Lcn/nubia/upgrade/util/ReportUtils$1;

    invoke-direct {v4, v0, p1, p2}, Lcn/nubia/upgrade/util/ReportUtils$1;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcn/nubia/upgrade/util/WorkQueue;->add(Ljava/lang/Runnable;)V

    .line 59
    return-void
.end method

.method public static selfReport(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "authId"    # Ljava/lang/String;
    .param p2, "authKey"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 63
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v11

    .line 64
    .local v11, "previousPolicy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    .line 66
    const-string v0, "version_code"

    invoke-static {p0, v0, v3}, Lcn/nubia/upgrade/util/PrefEditor;->readPublicInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    .line 68
    .local v4, "preVersion":I
    const-string v0, "from_version_name"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcn/nubia/upgrade/util/PrefEditor;->readPublicString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 70
    .local v7, "preVersionName":Ljava/lang/String;
    invoke-static {v11}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 75
    .local v6, "pkName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v6, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 76
    .local v10, "info":Landroid/content/pm/PackageInfo;
    sget-object v0, Lcn/nubia/upgrade/util/ReportUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preVersion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " newVersion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v10, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/upgrade/util/Ulog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    if-eq v4, v3, :cond_0

    iget v0, v10, Landroid/content/pm/PackageInfo;->versionCode:I

    if-gt v0, v4, :cond_1

    .line 78
    :cond_0
    sget-object v0, Lcn/nubia/upgrade/util/ReportUtils;->TAG:Ljava/lang/String;

    const-string v1, "no new  install to report!"

    invoke-static {v0, v1}, Lcn/nubia/upgrade/util/Ulog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v0, "version_code"

    iget v1, v10, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p0, v0, v1}, Lcn/nubia/upgrade/util/PrefEditor;->writePublicInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 80
    const-string v0, "from_version_name"

    iget-object v1, v10, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcn/nubia/upgrade/util/PrefEditor;->writePublicString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .end local v10    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    return-void

    .line 83
    .restart local v10    # "info":Landroid/content/pm/PackageInfo;
    :cond_1
    iget v5, v10, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 84
    .local v5, "versionCode":I
    iget-object v8, v10, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 85
    .local v8, "versionName":Ljava/lang/String;
    new-instance v12, Ljava/lang/Thread;

    new-instance v0, Lcn/nubia/upgrade/util/ReportUtils$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v8}, Lcn/nubia/upgrade/util/ReportUtils$2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v12, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v12}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    sget-object v0, Lcn/nubia/upgrade/util/ReportUtils;->TAG:Ljava/lang/String;

    const-string v1, "selfReport 1"

    invoke-static {v0, v1}, Lcn/nubia/upgrade/util/Ulog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 94
    .end local v5    # "versionCode":I
    .end local v8    # "versionName":Ljava/lang/String;
    .end local v10    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v9

    .line 96
    .local v9, "e":Ljava/lang/Exception;
    sget-object v0, Lcn/nubia/upgrade/util/ReportUtils;->TAG:Ljava/lang/String;

    const-string v1, "selfReport onException!!"

    invoke-static {v0, v1}, Lcn/nubia/upgrade/util/Ulog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static selfReport(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "authID"    # Ljava/lang/String;
    .param p2, "authKey"    # Ljava/lang/String;
    .param p3, "preVersion"    # I
    .param p4, "versionCode"    # I
    .param p5, "pkName"    # Ljava/lang/String;
    .param p6, "preVersionName"    # Ljava/lang/String;
    .param p7, "versinName"    # Ljava/lang/String;

    .prologue
    .line 104
    sget-object v1, Lcn/nubia/upgrade/util/ReportUtils;->TAG:Ljava/lang/String;

    const-string v3, "prepare to selfReport"

    invoke-static {v1, v3}, Lcn/nubia/upgrade/util/Ulog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 106
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p0}, Lcn/nubia/upgrade/util/InfoCollect;->getPhoneParameter(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 107
    const-string v1, "upgrade_type"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v1, "from_version_code"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v1, "version_code"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v1, "from_version_name"

    move-object/from16 v0, p6

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 115
    .local v10, "manager":Landroid/content/pm/PackageManager;
    const/16 v1, 0x80

    :try_start_0
    move-object/from16 v0, p5

    invoke-virtual {v10, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 124
    .local v8, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v8, :cond_0

    iget-object v1, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "unique_key"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 127
    .local v11, "uni_key":Ljava/lang/String;
    const-string v1, "unique_key"

    invoke-interface {v2, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .end local v11    # "uni_key":Ljava/lang/String;
    :cond_0
    const-string v1, "package_name"

    move-object/from16 v0, p5

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v1, "upgrade_status"

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-static {}, Lcn/nubia/upgrade/util/WorkQueue;->getInstance()Lcn/nubia/upgrade/util/WorkQueue;

    move-result-object v12

    new-instance v1, Lcn/nubia/upgrade/util/ReportUtils$3;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p0

    move/from16 v6, p4

    move-object/from16 v7, p7

    invoke-direct/range {v1 .. v7}, Lcn/nubia/upgrade/util/ReportUtils$3;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;)V

    invoke-virtual {v12, v1}, Lcn/nubia/upgrade/util/WorkQueue;->add(Ljava/lang/Runnable;)V

    .line 149
    .end local v8    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v9

    .line 119
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v1, Lcn/nubia/upgrade/util/ReportUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selfReport NameNotFoundException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcn/nubia/upgrade/util/Ulog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v9}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
