.class public Lim/fir/sdk/FIR;
.super Ljava/lang/Object;


# static fields
.field public static GENERAL_KEY:Ljava/lang/String;

.field public static OID:Ljava/lang/String;

.field public static SDK_VERSION:Ljava/lang/String;

.field private static globalMap:Ljava/util/Map;

.field private static handler:Lim/fir/sdk/crash/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "1.2.6"

    sput-object v0, Lim/fir/sdk/FIR;->SDK_VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCustomizeValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "null"

    :cond_0
    sget-object v0, Lim/fir/sdk/FIR;->globalMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static buildCrashData(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    :try_start_0
    invoke-static {p0}, Lim/fir/sdk/utils/g;->b(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lim/fir/sdk/module/a;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lim/fir/sdk/module/a;->b:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v1, Lim/fir/sdk/module/a;->c:Ljava/lang/String;

    invoke-static {}, Lim/fir/sdk/module/a;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {}, Lim/fir/sdk/module/b;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "app"

    invoke-virtual {v3, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "crash"

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "device"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ts"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "key"

    sget-object v1, Lim/fir/sdk/FIR;->GENERAL_KEY:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "request_id"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sign"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lim/fir/sdk/FIR;->GENERAL_KEY:Ljava/lang/String;

    invoke-static {v1, v2}, Lim/fir/sdk/utils/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim/fir/sdk/utils/c;->b(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public static checkForUpdateInAppStore(Landroid/content/Context;Lim/fir/sdk/callback/VersionCheckCallback;)V
    .locals 2

    invoke-static {p0}, Lim/fir/sdk/utils/g;->a(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "package_Name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lim/fir/sdk/version/AppVersion;->checkStoreVersion(Landroid/content/Context;Ljava/lang/String;Lim/fir/sdk/callback/VersionCheckCallback;)V

    return-void
.end method

.method public static checkForUpdateInFIR(Landroid/content/Context;Ljava/lang/String;Lim/fir/sdk/callback/VersionCheckCallback;)V
    .locals 2

    invoke-static {p0}, Lim/fir/sdk/utils/g;->a(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "package_Name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lim/fir/sdk/version/AppVersion;->checkFIRVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lim/fir/sdk/callback/VersionCheckCallback;)V

    return-void
.end method

.method public static getCustomizeValue()Ljava/util/Map;
    .locals 1

    sget-object v0, Lim/fir/sdk/FIR;->globalMap:Ljava/util/Map;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lim/fir/sdk/FIR;->initSdk(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "init sdk error"

    invoke-static {v0}, Lim/fir/sdk/utils/c;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lim/fir/sdk/crash/a;

    invoke-direct {v0, p0}, Lim/fir/sdk/crash/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lim/fir/sdk/FIR;->handler:Lim/fir/sdk/crash/a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lim/fir/sdk/FIR;->globalMap:Ljava/util/Map;

    goto :goto_0
.end method

.method private static initSdk(Landroid/content/Context;)Z
    .locals 7

    const/16 v6, 0x20

    const/4 v1, 0x1

    const/16 v5, 0x10

    const/4 v0, 0x0

    sget-object v2, Lim/fir/sdk/FIR;->GENERAL_KEY:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, "BUG_HD_SDK_GENERAL_KEY"

    invoke-static {p0, v2}, Lim/fir/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lim/fir/sdk/FIR;->GENERAL_KEY:Ljava/lang/String;

    :cond_0
    sget-object v2, Lim/fir/sdk/FIR;->GENERAL_KEY:Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-object v2, Lim/fir/sdk/FIR;->GENERAL_KEY:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lim/fir/sdk/FIR;->GENERAL_KEY:Ljava/lang/String;

    const-string v3, "YOUR_GENERAL_KEY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const-string v1, "Please enter your general_key,init error!"

    invoke-static {v1}, Lim/fir/sdk/utils/c;->c(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_2
    sget-object v2, Lim/fir/sdk/FIR;->GENERAL_KEY:Ljava/lang/String;

    if-nez v2, :cond_3

    const-string v1, "Please enter your general_key,init error!"

    invoke-static {v1}, Lim/fir/sdk/utils/c;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v2, Lim/fir/sdk/FIR;->GENERAL_KEY:Ljava/lang/String;

    invoke-virtual {v2, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "block"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lim/fir/sdk/utils/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v1

    :goto_1
    if-nez v2, :cond_5

    const-string v1, "invaild general_key,init error!"

    invoke-static {v1}, Lim/fir/sdk/utils/c;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move v2, v0

    goto :goto_1

    :cond_5
    sget-object v0, Lim/fir/sdk/FIR;->GENERAL_KEY:Ljava/lang/String;

    invoke-static {p0, v0}, Lim/fir/sdk/FIR;->sendRequest(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method public static removeAllCustomizeValue()V
    .locals 1

    invoke-static {}, Lim/fir/sdk/FIR;->getCustomizeValue()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public static removeCustomizeValue(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lim/fir/sdk/FIR;->globalMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lim/fir/sdk/FIR;->getCustomizeValue()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static sendRequest(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-static {p0}, Lim/fir/sdk/FIR;->buildCrashData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lim/fir/sdk/data/a;->a()Lim/fir/sdk/data/a;

    move-result-object v1

    :try_start_0
    new-instance v2, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v2, v0}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    new-instance v0, Lim/fir/sdk/a;

    invoke-direct {v0}, Lim/fir/sdk/a;-><init>()V

    invoke-virtual {v1, p0, v2, v0}, Lim/fir/sdk/data/a;->b(Landroid/content/Context;Lorg/apache/http/entity/StringEntity;Lim/fir/sdk/callback/FIRResultCallback;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setDebug(Z)V
    .locals 0

    sput-boolean p0, Lim/fir/sdk/utils/c;->a:Z

    return-void
.end method
